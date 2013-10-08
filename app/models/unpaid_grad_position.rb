class UnpaidGradPosition < ActiveRecord::Base
  attr_accessible :academic_credit, :academic_level, :desired_classes, 
  :job_description, :desired_skills, :minimum_gpa, :project_survey_id, :record_begin, :record_end,
   :weekly_time_commitment, :work_period
   
  belongs_to :project_survey
  belongs_to :project
  
end
