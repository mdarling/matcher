class PaidUndergradPosition < ActiveRecord::Base
  attr_accessible :academicLevel, :deliverables, :desiredClasses, 
  :desiredSkills, :jobDescription, :minimumGPA, :positionTitle, 
  :postingNumber, :recordBegin, :recordEnd, :unmJobs, :weeklyTimeCommitment, 
  :workPeriod, :project_survey_id
  
  belongs_to :project_survey
end
