require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class ChangeColumn < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
  	change_column :students, :birthday, :date
  end
end