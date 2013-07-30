class Department < ActiveRecord::Base
  attr_accessible :name, :shortname, :college_id
  
  belongs_to :project_survey
  belongs_to :college
  has_many :projects
end
