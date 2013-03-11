class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate(:page => params[:page], :per_page => PERPAGE)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @jobs = @category.jobs.paginate(:page => params[:page], :per_page => PERPAGE)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jobs }
    end
  end
end
