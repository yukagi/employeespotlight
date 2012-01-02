class Employee < ActiveRecord::Base
	has_attached_file :photo, :styles => {:thumb => "50", :medium => "400x400"}, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml",
						:path => "/photos/:id/:style/:filename"

	validates :startDate, :originLocation, :birthday, :family, :fact1, :fact2, :fact3, :first_name, :last_name, :dept, :presence => true

end
