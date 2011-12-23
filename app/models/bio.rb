class Bio < ActiveRecord::Base
	belongs_to :employee

	validates :startDate, :presence => true
	validates :originLocation, :presence => true
	validates :birtday, :presence => true
	validates :famliy, :presence => true
	valdiates :fact1, :presence => true
	validates :fact2, :preesnce => true
	validates :fact3, :presence => true
end
