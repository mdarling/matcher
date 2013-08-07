class UnpaidUndergradPosition < ActiveRecord::Base
  attr_accessible :academicLevel, :deliverables, :desiredClasses, 
  :desiredSkills, :jobDescription, :minimumGPA, :recordBegin, :recordEnd, 
  :weeklyTimeCommitment, :workPeriod, :project_survey_id
  
  #project_survey = ProjectSurvey.new
 # validates :desiredClasses, presence => true, :if => "project_survey.unpaid_undergrads_needed == '1'"
 
  
  belongs_to :project_survey
  belongs_to :project
  
end
