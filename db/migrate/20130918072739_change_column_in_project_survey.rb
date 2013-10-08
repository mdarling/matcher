class ChangeColumnInProjectSurvey < ActiveRecord::Migration
  def up
  	rename_column :project_surveys, :prost_docs_needed, :post_docs_needed
	end
  def down
  end
end
