class StudentProfile < ActiveRecord::Base
  attr_accessible :academicLevel, :email, :expectedGraduation, :firstName, 
	:interests, :lastName, :major, :minor, :phoneNumber, :unmID
end
