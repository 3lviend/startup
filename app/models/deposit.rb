class Deposit < ActiveRecord::Base
  attr_accessible :birth_date, :contact_number, :education,
    :email, :full_name, :gender, :nationality, :resume, :salary

  #validation
  validates :birth_date, :contact_number, :education, :email, :full_name,
    :gender, :nationality, :resume, :salary, :presence => true

  validates :email, :uniqueness => true

  def show_gender
    if !gender.blank?
      gender.eql?(true) ? "male" : "female"
    else
      ""
    end
  end
end
