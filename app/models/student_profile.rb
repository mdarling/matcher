class StudentProfile < ActiveRecord::Base
  attr_accessible :academicLevel, :email, :expectedGraduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID, :department

	validates :academicLevel, :email, :expectedGraduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID, :department, :presence => true
	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
