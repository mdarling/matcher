class PaidGradPosition < ActiveRecord::Base
  attr_accessible :academicLevel, :deliverables, :desiredClasses, 
  :desiredSkills, :jobDescription, :minimumGPA, :positionTitle, 
  :postingNumber, :recordBegin, :recordEnd, :unmJobs, :weeklyTimeCommitment, 
  :workPeriod
  
  belongs_to :project_survey
end