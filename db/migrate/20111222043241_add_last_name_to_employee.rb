class AddLastNameToEmployee < ActiveRecord::Migration
  
  def up
  	rename_column :employees, :name, :first_name
  	add_column :employees, :last_name, :string
  end

  def down
  	remove_column :employees, :last_name, :string
  	rename_column :employees, :first_aname, :name
  end

end
