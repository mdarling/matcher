class AddGraduateAttributesToProjectSurvey < ActiveRecord::Migration
  def change
  	add_column :project_surveys, :prost_docs_needed, :string 
  end
end
