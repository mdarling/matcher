class PostDoc < ActiveRecord::Base
  attr_accessible :desired_skills, :job_description, :position_title, 
  :posting_number, :project_survey_id, :record_begin, :record_end, 
  :unm_jobs, :weekly_time_commitment, :work_period
   
     belongs_to :project_survey
  belongs_to :project	
end
