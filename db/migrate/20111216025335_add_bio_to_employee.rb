class AddBioToEmployee < ActiveRecord::Migration
  def change
  	add_column :employees, :startDate, :string
  	add_column :employees, :originLocation, :string
  	add_column :employees, :birthday, :string
  	add_column :employees, :family, :string
  	add_column :employees, :fact1, :string
  	add_column :employees, :fact2, :string
  	add_column :employees, :fact3, :string
  end
end
