class CreateUnpaidGradPositions < ActiveRecord::Migration
  def change
    create_table :unpaid_grad_positions do |t|
      t.string :workPeriod
      t.string :weeklyTimeCommitment
      t.text :deliverables
      t.text :desiredSkills
      t.text :desiredClasses
      t.datetime :recordBegin
      t.datetime :recordEnd
      t.string :minimumGPA
      t.string :academicLevel
      t.text :jobDescription

      t.timestamps
    end
  end
end
