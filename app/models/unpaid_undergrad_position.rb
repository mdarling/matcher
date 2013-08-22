class UnpaidUndergradPosition < ActiveRecord::Base
  attr_accessible :academic_level, :deliverables, :desired_classes, 
  :desired_skills, :job_description, :minimum_gpa, :record_begin, :record_end, 
  :weekly_time_commitment, :work_period, :project_survey_id, :academic_credit
  
  #project_survey = ProjectSurvey.new
 	#validates :desiredClasses, :presence => true
 
  
  belongs_to :project_survey
  belongs_to :project
  
end
