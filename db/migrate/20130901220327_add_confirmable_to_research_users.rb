class AddConfirmableToResearchUsers < ActiveRecord::Migration
  def change
  	add_column :research_users, :confirmation_token, :string
    add_column :research_users, :confirmed_at, :datetime
    add_column :research_users, :confirmation_sent_at, :datetime
    add_index :research_users, :confirmation_token, :unique => true
    ResearchUser.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # users as confirmed, do the following
    ResearchUser.update_all(:confirmed_at => Time.now)
    # All existing user accounts should be able to log in after this.
  end
end


