class AddLeadResearcherToProjectSurvey < ActiveRecord::Migration
  def change
  	add_column :project_surveys, :lead_researcher, :string
  end
end
