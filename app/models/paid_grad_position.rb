class PaidGradPosition < ActiveRecord::Base
  attr_accessible :academic_level, :desired_classes, :desired_skills, 
  :job_description, :minimum_gpa, :position_title, :posting_number, 
  :project_survey_id, :record_begin, :record_end, :unm_jobs, 
  :weekly_time_commitment, :work_period
end	
