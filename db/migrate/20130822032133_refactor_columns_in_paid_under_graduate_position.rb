class RefactorColumnsInPaidUnderGraduatePosition < ActiveRecord::Migration

  def change
  	rename_column :paid_undergrad_positions, :academicLevel, :academic_level
  rename_column :paid_undergrad_positions, :desiredClasses, :desired_classes
  rename_column :paid_undergrad_positions, :desiredSkills, :desired_skills
  rename_column :paid_undergrad_positions, :minimumGPA, :minimum_gpa
  rename_column :paid_undergrad_positions, :recordBegin, :record_begin
  rename_column :paid_undergrad_positions, :recordEnd, :record_end
  rename_column :paid_undergrad_positions, :weeklyTimeCommitment, :weekly_time_commitment
rename_column :paid_undergrad_positions, :workPeriod, :work_period	
rename_column :paid_undergrad_positions, :jobDescription, :job_description
rename_column :paid_undergrad_positions, :postingNumber, :posting_number
rename_column :paid_undergrad_positions, :unmJobs, :unm_jobs
	
  end

end

