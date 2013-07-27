class AddNumberOfGradsToProjectSurvey < ActiveRecord::Migration
  def change
    add_column :project_surveys, :unpaid_grads_needed, :string
  	add_column :project_surveys, :paid_grads_needed, :string
  end
end
