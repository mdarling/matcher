class AddProjectSurveyIdToDepartment < ActiveRecord::Migration
  def change
    add_column :project_surveys, :department_id, :integer
  end
end
