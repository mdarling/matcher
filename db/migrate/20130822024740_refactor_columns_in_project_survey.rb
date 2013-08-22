class RefactorColumnsInProjectSurvey < ActiveRecord::Migration
  def up
  rename_column :project_surveys, :researchArea, :research_area
  rename_column :project_surveys, :projectDescription, :project_description
  
  end

  def down
  rename_column :project_surveys, :research_area, :researchArea
  rename_column :project_surveys, :project_description, :projectDescription
  end
end
