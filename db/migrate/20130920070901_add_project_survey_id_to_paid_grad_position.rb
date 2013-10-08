class AddProjectSurveyIdToPaidGradPosition < ActiveRecord::Migration
  def change
  	add_column :paid_grad_positions, :project_survey_id, :integer
  end
end
