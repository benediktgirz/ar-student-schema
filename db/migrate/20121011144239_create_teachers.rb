require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |header|
      header.string :first_name
      header.string :last_name
      header.string :address
      header.string :email
      header.string :phone_number
      

    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
