class StudentProfile < ActiveRecord::Base
  attr_accessible :academicLevel, :email, :expectedGraduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID, :department, 
	:experience, :user_id

	validates :academicLevel, :email, :expectedGraduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID, :department, :user_id, :presence => true
	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	
	belongs_to :user

end
