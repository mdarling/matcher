class StudentProfile < ActiveRecord::Base
  attr_accessible :academicLevel, :email, :expected_graduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID, :department, 
	:experience, :user_id

	validates :academic_level, :expected_graduation, :first_name, 
	:interests, :last_name, :major, :minor, :phone_number, :unm_id, :department, :user_id, :presence => true
	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates_uniqueness_of :email
	validates_presence_of :email
	
	belongs_to :user

end
