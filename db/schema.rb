# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130828221749) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.string   "shortname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "shortname"
    t.integer  "college_id"
  end

  create_table "paid_grad_positions", :force => true do |t|
    t.string   "unmJobs"
    t.string   "postingNumber"
    t.string   "positionTitle"
    t.string   "workPeriod"
    t.string   "weeklyTimeCommitment"
    t.text     "deliverables"
    t.text     "desiredSkills"
    t.text     "desiredClasses"
    t.datetime "recordBegin"
    t.datetime "recordEnd"
    t.string   "minimumGPA"
    t.string   "academicLevel"
    t.text     "jobDescription"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "paid_undergrad_positions", :force => true do |t|
    t.string   "unm_jobs"
    t.string   "posting_number"
    t.string   "position_title"
    t.string   "work_period"
    t.string   "weekly_time_commitment"
    t.text     "deliverables"
    t.text     "desired_skills"
    t.text     "desired_classes"
    t.datetime "record_begin"
    t.datetime "record_end"
    t.string   "minimum_gpa"
    t.string   "academic_level"
    t.text     "job_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "project_survey_id"
  end

  create_table "project_profiles", :force => true do |t|
    t.string   "title"
    t.string   "department"
    t.string   "email"
    t.boolean  "unpaid_undergrad"
    t.boolean  "unpaid_grad"
    t.boolean  "paid_grad"
    t.string   "listed"
    t.string   "posting_number"
    t.string   "position_title"
    t.datetime "work_period"
    t.string   "academic_level"
    t.string   "minimum_gpa"
    t.string   "required_classes"
    t.string   "other_qualifications"
    t.string   "job_description"
    t.datetime "application_deadline"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "project_surveys", :force => true do |t|
    t.string   "project_title"
    t.text     "project_description"
    t.string   "email"
    t.string   "phone"
    t.string   "department"
    t.string   "research_area"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "researcher"
    t.string   "unpaid_undergrads_needed"
    t.string   "paid_undergrads_needed"
    t.string   "unpaid_grads_needed"
    t.string   "paid_grads_needed"
    t.string   "lead_researcher"
    t.integer  "research_user_id"
  end

  create_table "projects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "research_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "research_users", ["email"], :name => "index_research_users_on_email", :unique => true
  add_index "research_users", ["reset_password_token"], :name => "index_research_users_on_reset_password_token", :unique => true

  create_table "student_profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "unm_id"
    t.string   "email"
    t.string   "phone_number"
    t.string   "academic_level"
    t.string   "major"
    t.string   "minor"
    t.datetime "expected_graduation"
    t.text     "interests"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "department"
    t.text     "experience"
    t.integer  "user_id"
  end

  create_table "unpaid_grad_positions", :force => true do |t|
    t.string   "workPeriod"
    t.string   "weeklyTimeCommitment"
    t.text     "deliverables"
    t.text     "desiredSkills"
    t.text     "desiredClasses"
    t.datetime "recordBegin"
    t.datetime "recordEnd"
    t.string   "minimumGPA"
    t.string   "academicLevel"
    t.text     "jobDescription"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "unpaid_undergrad_positions", :force => true do |t|
    t.string   "work_period"
    t.string   "weekly_time_commitment"
    t.text     "deliverables"
    t.text     "desired_skills"
    t.text     "desired_classes"
    t.datetime "record_begin"
    t.datetime "record_end"
    t.string   "minimum_gpa"
    t.string   "academic_level"
    t.text     "job_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "project_survey_id"
    t.string   "academic_credit"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
