class Job < ActiveRecord::Base
  attr_accessible :apply_to, :category_id, :company_name, :description, :email, 
    :location, :publish, :title, :url, :highlight, :skill_list, :job_type, :salary, :user_id

  #validation
  validates :apply_to, :category_id, :company_name, :description, :email,
    :location, :title, :url, :skill_list, :job_type, :salary, :presence => true

  # Alias for acts_as_taggable_on :tags
  acts_as_taggable
  acts_as_taggable_on :skills

  #job relations
  belongs_to :category
  belongs_to :user
end
