require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class UpdateStudentsName < ActiveRecord::Migration
  def change 
    add_column :students, :name, :string
    add_column :students, :address, :string
    remove_column :students, :first_name
    remove_column :students, :last_name
  end
    # HINT: checkout ActiveRecord::Migration.create_table

 
 
end
