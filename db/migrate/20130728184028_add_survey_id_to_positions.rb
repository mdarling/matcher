class AddSurveyIdToPositions < ActiveRecord::Migration
  def change
  add_column :paid_undergrad_positions, :project_survey_id, :integer
  add_column :unpaid_undergrad_positions, :project_survey_id, :integer
  end
end
