    require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here

  has_one :teacher

  # validates :email, :format => { :with => /\w+[@]\w+[.]\w{2,}/, :message => "You should know your email address."}
  # validates :email, :uniqueness => true
  validates :age, :numericality => { :greater_than_or_equal_to => 5}
  validates :phone, :format => { :with => /.*\d{3}.*\d{3}.*\d{4}.*/, :message => "Invalid Phone Number"}


  attr_accessor :first_name, :last_name, :birthday, :gender

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    bday = Date.parse(self.birthday)
    age = now.year - bday.year - ((now.month > bday.month || (now.month == bday.month && now.day >= bday.day)) ? 0 : 1)
  end


end
