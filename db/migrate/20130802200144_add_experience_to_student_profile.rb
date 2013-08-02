class AddExperienceToStudentProfile < ActiveRecord::Migration
  def change
  	add_column :student_profiles, :experience, :text
  end
end
