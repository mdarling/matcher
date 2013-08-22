class Add < ActiveRecord::Migration
  def change
  add_column :paid_undergrad_positions, :position_title, :string
  end

end
