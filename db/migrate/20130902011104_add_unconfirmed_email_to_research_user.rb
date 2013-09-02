class AddUnconfirmedEmailToResearchUser < ActiveRecord::Migration
  def change
  	add_column :research_users, :unconfirmed_email, :string 
  end
end
