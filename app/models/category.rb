class Category < ActiveRecord::Base
  attr_accessible :description, :title

  #category relations
  has_many :jobs
end
