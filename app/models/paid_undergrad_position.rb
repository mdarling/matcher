class PaidUndergradPosition < ActiveRecord::Base
  attr_accessible :academic_level, :deliverables, :desired_classes, 
  :desired_skills, :job_description, :minimum_gpa, :position_title, 
  :posting_number, :record_begin, :record_end, :unm_jobs, :weekly_time_commitment, 
  :work_period, :project_survey_id
  
  belongs_to :project_survey
  belongs_to :project	
end
