class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :account_type,
    :status, :profile_id
  # attr_accessible :title, :body

  #validation
  validates :email, :password, :password_confirmation, :presence => true

  #relations
  has_many :jobs
  has_one :profile

  before_create {self.build_profile}
end
