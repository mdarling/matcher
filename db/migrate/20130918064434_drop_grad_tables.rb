class DropGradTables < ActiveRecord::Migration
  def up
  	drop_table :unpaid_grad_positions
  	drop_table :paid_grad_positions
  end

  def down
  end
end
