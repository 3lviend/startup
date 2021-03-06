class JobsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show, :filtering]
  
  # GET /jobs
  # GET /jobs.json
  def index
    option_selections
    @jobs = Job.all.group_by(&:category_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    option_selections
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    option_selections
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(params[:job])

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        option_selections
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        option_selections
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  def filtering
    @objects = if params[:filter].eql?("salary")
      Job.where(:salary => SALARY[params[:q].to_i-1]).paginate(:page => params[:page], :per_page => PERPAGE)
    else
      Job.where(:job_type => params[:q]).paginate(:page => params[:page], :per_page => PERPAGE)
    end

    respond_to do |format|
      format.html # filtering.html.erb
      format.json { render json: @objects }
    end
  end

  protected

  def option_selections
    @categories = Category.order(:title)
    @types = TYPE
    @salaries = SALARY
  end
end
