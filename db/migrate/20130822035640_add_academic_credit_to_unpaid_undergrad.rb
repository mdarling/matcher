class AddAcademicCreditToUnpaidUndergrad < ActiveRecord::Migration
  def change
  	add_column :unpaid_undergrad_positions, :academic_credit, :string
  end
end
