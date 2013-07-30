class College < ActiveRecord::Base
  attr_accessible :name, :shortname
  
  has_many :departments
  has_many :projects
end
