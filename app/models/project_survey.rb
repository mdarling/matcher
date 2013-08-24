class ProjectSurvey < ActiveRecord::Base
  attr_accessible :department, :email, :phone, :project_description, 
  :project_title, :research_area, :researcher, :unpaid_grads_needed, 
  :paid_grads_needed, :unpaid_undergrads_needed, :paid_undergrads_needed,
  :unpaid_undergrad_positions_attributes, :paid_undergrad_positions_attributes, :lead_researcher
  :research_user_id
  
  validates :research_user_id, :researcher, :project_title, :research_area, 
  :project_description, :email, :department, :presence => true
	
	belongs_to :research_user
	has_many :unpaid_undergrad_positions
	has_many :paid_undergrad_positions
	has_many :unpaid_grad_positions
	has_many :paid_grad_positions
	has_many :departments
	
	accepts_nested_attributes_for :unpaid_undergrad_positions, 
																:paid_undergrad_positions,
																:unpaid_grad_positions,
																:paid_grad_positions,
																:allow_destroy => true
																
	
  validate :position_present

	

  private

    def position_present
      if unpaid_undergrads_needed == "0" && paid_undergrads_needed == "0"
        errors[:base] << "You must select at least one type of undergrad position."
      end
    end
    
    
    

  

															
end
