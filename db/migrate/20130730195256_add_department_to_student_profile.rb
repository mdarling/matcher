class AddDepartmentToStudentProfile < ActiveRecord::Migration
  def change
  	add_column :student_profiles, :department, :string
  end
end
