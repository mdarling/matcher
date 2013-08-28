class RefactorStudentProfileAttributes < ActiveRecord::Migration
 def change
	rename_column :student_profiles, :academicLevel, :academic_level
	rename_column :student_profiles, :firstName, :first_name
	rename_column :student_profiles, :lastName, :last_name
	rename_column :student_profiles, :phoneNumber, :phone_number
	rename_column :student_profiles, :unmID, :unm_id
 end
end
