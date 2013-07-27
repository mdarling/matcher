class ProjectSurvey < ActiveRecord::Base
  attr_accessible :department, :email, :phone, :projectDescription, 
  :projectTitle, :researchArea, :researcher, :unpaid_grads_needed, 
  :paid_grads_needed, :unpaid_undergrads_needed, :paid_undergrads_needed
	
	has_many :unpaid_undergrad_positions
	has_many :paid_undergrad_positions
	has_many :unpaid_grad_positions
	has_many :paid_grad_positions

end
