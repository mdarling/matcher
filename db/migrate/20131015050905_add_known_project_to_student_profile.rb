class AddKnownProjectToStudentProfile < ActiveRecord::Migration
  def change
  	add_column :student_profiles, :known_project_ids, :string
  end
end
