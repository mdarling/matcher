class CreatePostDocs < ActiveRecord::Migration
  def change
    create_table :post_docs do |t|
      t.text :desired_skills
      t.text :job_description
      t.string :position_title
      t.string :posting_number
      t.integer :project_survey_id
      t.date :record_begin
      t.date :record_end
      t.string :unm_jobs
      t.string :weekly_time_commitment
      t.string :work_period

      t.timestamps
    end
  end
end
