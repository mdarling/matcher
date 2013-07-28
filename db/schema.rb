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

ActiveRecord::Schema.define(:version => 20130728184028) do

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
    t.string   "projectTitle"
    t.text     "projectDescription"
    t.string   "email"
    t.string   "phone"
    t.string   "department"
    t.string   "researchArea"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "researcher"
    t.string   "unpaid_undergrads_needed"
    t.string   "paid_undergrads_needed"
    t.string   "unpaid_grads_needed"
    t.string   "paid_grads_needed"
  end

  create_table "student_profiles", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "unmID"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "academicLevel"
    t.string   "major"
    t.string   "minor"
    t.datetime "expectedGraduation"
    t.text     "interests"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
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
    t.integer  "project_survey_id"
  end

end
