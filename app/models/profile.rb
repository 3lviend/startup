class Profile < ActiveRecord::Base
  attr_accessible :bio, :city, :github_url, :job_notif, :name, :portofolio_url, :user_id

  #relations
  belongs_to :user
end
