class CreateUnpaidGradPositions < ActiveRecord::Migration
  def change
    create_table :unpaid_grad_positions do |t|
      t.string :academic_level
      t.text :desired_classes
      t.text :job_description
      t.string :minimum_gpa
      t.date :record_begin
      t.date :record_end
      t.string :weekly_time_commitment
      t.string :work_period
      t.integer :project_survey_id
      t.string :academic_credit

      t.timestamps
    end
  end
end
