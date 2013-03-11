class Job < ActiveRecord::Base
  attr_accessible :apply_to, :category_id, :company_name, :description, :email, 
    :location, :publish, :title, :url, :highlight, :skill_list

  # Alias for acts_as_taggable_on :tags
  acts_as_taggable
  acts_as_taggable_on :skills

  #job relations
  belongs_to :category
end
