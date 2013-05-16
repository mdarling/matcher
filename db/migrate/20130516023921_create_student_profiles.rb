class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :unmID
      t.string :email
      t.string :phoneNumber
      t.string :academicLevel
      t.string :major
      t.string :minor
      t.datetime :expectedGraduation
      t.text :interests

      t.timestamps
    end
  end
end
