class ChangeResearchAreaFormatInProjectProfile < ActiveRecord::Migration
  def up
  	change_column :project_surveys, :researchArea, :string
  end

  def down
  	change_column :project_surveys, :researchArea, :text
  end
end
