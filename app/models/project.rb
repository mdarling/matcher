class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :project_surveys
  has_many :unpaid_undergrad_positions
  has_many :paid_undergrad_positions
  has_many :unpaid_grad_positions
  has_many :paid_grad_positions
  
  belongs_to :college
  belongs_to :department
end
