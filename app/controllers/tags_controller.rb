class TagsController < ApplicationController

  def index
    @tags = Tagging.paginate(:page => params[:page], :per_page => PERPAGE)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end
  
  def show
    @tag = Tagging.find(params[:tag_id])
    @jobs = Job.tagged_with(@tag.name).paginate(:page => params[:page], :per_page => PERPAGE)
  end
end
