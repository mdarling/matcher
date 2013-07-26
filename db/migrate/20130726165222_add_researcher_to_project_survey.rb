class AddResearcherToProjectSurvey < ActiveRecord::Migration
  def change
    add_column :project_surveys, :researcher, :string
  end
end
