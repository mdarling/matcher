class UnpaidGradPosition < ActiveRecord::Base
  attr_accessible :academicLevel, :deliverables, :desiredClasses, 
  :desiredSkills, :jobDescription, :minimumGPA, :recordBegin, :recordEnd, 
  :weeklyTimeCommitment, :workPeriod, :project_survey_id
  
  belongs_to :project_survey
  belongs_to :project
  
end
