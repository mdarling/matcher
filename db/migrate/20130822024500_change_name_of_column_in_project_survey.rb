class ChangeNameOfColumnInProjectSurvey < ActiveRecord::Migration
  def up
  rename_column :project_surveys, :projectTitle, :project_title
  end

  def down
  rename_column :project_surveys, :project_title, :ProjectTitle
  end
end
