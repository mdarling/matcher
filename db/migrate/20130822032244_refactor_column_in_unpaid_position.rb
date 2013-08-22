class RefactorColumnInUnpaidPosition < ActiveRecord::Migration
 def change
	rename_column :unpaid_undergrad_positions, :jobDescription, :job_description
  
 end
end
