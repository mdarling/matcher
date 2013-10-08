class AddDesiredSkillsToUnpaidGrad < ActiveRecord::Migration
  def change
  	add_column :unpaid_grad_positions, :desired_skills, :string
  end
end
