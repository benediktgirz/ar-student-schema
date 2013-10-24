require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here

  validates :email, :format => { :with => /\w+[@]\w+[.]\w{2,}/, :message => "You should know your email address."}
  validates :email, :uniqueness => true
  validates :age, :numericality => { :greater_than_or_equal_to => 5}
  validates :phone, :format => { :with => /.*\d{3}.*\d{3}.*\d{4}.*/, :message => "Invalid Phone Number"}


  attr_accessor :first_name, :last_name, :birthday, :gender

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end


end
