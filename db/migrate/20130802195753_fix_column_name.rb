class FixColumnName < ActiveRecord::Migration
  def up
  rename_column :table_name, :old_column, :new_column
  rename_column :student_profiles, :department, :string
  end

  def down
  end
end
