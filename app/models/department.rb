class Department < ActiveRecord::Base
  attr_accessible :name, :shortname, :college_id

  has_many :project_surveys
  belongs_to :college
  has_many :projects

	def get_url
		"http://unm-research.herokuapp.com/project_surveys?utf8=%E2%9C%93&q%5Bdepartment_cont%5D=#{self.name.strip.gsub(" ", "+")}&commit=Search"
	end
end
