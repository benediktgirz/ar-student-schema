require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  has_many :students

  validates :email, :uniqueness => true
  # validates :name, :uniqueness =>  {:message => "name already used"}
  # validates name, :uniqueness =>  {:message => "name already used"}
  # validates :last_name, :uniqueness =>  { :uniqueness => true, message: "Name already used"}

  # validates_uniqueness_of :first_name, :scope => [:last_name, :birthday]
  validates_uniqueness_of :first_name, :scope => :last_name, message: "name already used"
 

  # def name
  #   "#{self.first_name} #{self.last_name}"
  # end

end   
