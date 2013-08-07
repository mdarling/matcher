class AddResearchUserIdToProjectSurvey < ActiveRecord::Migration
  def change
  	add_column :project_surveys, :research_user_id, :integer
  end
end
