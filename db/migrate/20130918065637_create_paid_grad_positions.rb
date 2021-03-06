class CreatePaidGradPositions < ActiveRecord::Migration
  def change
    create_table :paid_grad_positions do |t|
      t.string :academic_level
      t.text :desired_classes
      t.text :desired_skills
      t.text :job_description
      t.string :minimum_gpa
      t.string :position_title
      t.string :posting_number
      t.date :record_begin
      t.date :record_end
      t.string :unm_jobs
      t.string :weekly_time_commitment
      t.string :work_period
      t.string :project_survey_id
      t.string :post_doc

      t.timestamps
    end
  end
end
