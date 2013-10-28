class ProjectSurvey < ActiveRecord::Base
  attr_accessible :department_id, :department, :email, :phone, :project_description, 
  :project_title, :research_area, :lead_researcher, :researcher, :unpaid_grads_needed, 
  :paid_grads_needed, :unpaid_undergrads_needed, :paid_undergrads_needed,
  :unpaid_undergrad_positions_attributes, :paid_undergrad_positions_attributes, 
  :lead_researcher, :research_user_id, :post_docs_needed,  :post_docs_attributes,
  :unpaid_grad_positions_attributes, :paid_grad_positions_attributes
  
  validates :department_id, :research_user_id, :lead_researcher, :project_title, :research_area, 
  :project_description, :email, :department, :presence => true
	
	belongs_to :research_user
	has_many :unpaid_undergrad_positions
	has_many :paid_undergrad_positions
	has_many :unpaid_grad_positions
	has_many :paid_grad_positions
	has_many :post_docs
	belongs_to :departments
	
	accepts_nested_attributes_for :unpaid_undergrad_positions, 
																:paid_undergrad_positions,
																:unpaid_grad_positions,
																:paid_grad_positions,
																:post_docs,
																:allow_destroy => true
																
	
  validate :position_present

	

  private

    def position_present
      if unpaid_undergrads_needed == "0" && paid_undergrads_needed == "0" && 
      		unpaid_grads_needed == "0" && paid_grads_needed == "0"&& 
      			post_docs_needed == "0"
        errors[:base] << "You must select at least one type of undergrad position."
      end
    end
    
    
    

  

															
end
