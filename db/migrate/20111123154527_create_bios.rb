class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :startDate
      t.string :originLocation
      t.string :birthday
      t.string :family
      t.string :fact1
      t.string :fact2
      t.string :fact3

      t.timestamps
    end
  end
end
