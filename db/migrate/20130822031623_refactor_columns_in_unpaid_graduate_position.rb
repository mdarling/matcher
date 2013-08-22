class RefactorColumnsInUnpaidGraduatePosition < ActiveRecord::Migration
  def change
  	rename_column :unpaid_undergrad_positions, :academicLevel, :academic_level
  rename_column :unpaid_undergrad_positions, :desiredClasses, :desired_classes
  rename_column :unpaid_undergrad_positions, :desiredSkills, :desired_skills
  rename_column :unpaid_undergrad_positions, :minimumGPA, :minimum_gpa
  rename_column :unpaid_undergrad_positions, :recordBegin, :record_begin
  rename_column :unpaid_undergrad_positions, :recordEnd, :record_end
  rename_column :unpaid_undergrad_positions, :weeklyTimeCommitment, :weekly_time_commitment
rename_column :unpaid_undergrad_positions, :workPeriod, :work_period	
  end

end
