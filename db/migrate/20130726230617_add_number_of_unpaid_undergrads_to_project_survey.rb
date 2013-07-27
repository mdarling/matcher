class AddNumberOfUnpaidUndergradsToProjectSurvey < ActiveRecord::Migration
  def change
  	add_column :project_surveys, :unpaid_undergrads_needed, :string
  	add_column :project_surveys, :paid_undergrads_needed, :string
  end
end
