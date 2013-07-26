class UnpaidGradPosition < ActiveRecord::Base
  attr_accessible :academicLevel, :deliverables, :desiredClasses, 
  :desiredSkills, :jobDescription, :minimumGPA, :recordBegin, :recordEnd, 
  :weeklyTimeCommitment, :workPeriod
  
  belongs_to :project_survey
  
end
