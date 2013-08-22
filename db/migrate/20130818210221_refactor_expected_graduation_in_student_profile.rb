class RefactorExpectedGraduationInStudentProfile < ActiveRecord::Migration
  def up
  	rename_column :student_profiles, :expectedGraduation, :expected_graduation
  end

  def down
  	rename_column :student_profiles, :expected_graduation, :expectedGraduation
  end
end
