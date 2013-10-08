class RemovePostdocFromPaidGrad < ActiveRecord::Migration
  def up
  	remove_column :paid_grad_positions, :post_doc
  end

  def down
  end
end
