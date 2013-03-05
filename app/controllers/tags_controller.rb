class TagsController < ApplicationController
  
  def show
    @tag = Tagging.find(params[:tag_id])
    @jobs = Job.tagged_with(@tag.name).paginate(:page => params[:page], :per_page => 1)
  end
end
