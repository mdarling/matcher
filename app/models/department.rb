class Department < ActiveRecord::Base
  attr_accessible :name, :shortname, :college_id
  
  has_many :project_surveys
  belongs_to :college
  has_many :projects
end
