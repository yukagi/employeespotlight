class Employee < ActiveRecord::Base
	has_attached_file :photo, :styles => {:thumb => "50", :medium => "400x400"}

	validates :startDate, :originLocation, :birthday, :family, :fact1, :fact2, :fact3, :first_name, :last_name, :dept, :presence => true

end
