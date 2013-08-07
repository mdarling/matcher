class ProjectSurvey < ActiveRecord::Base
  attr_accessible :department, :email, :phone, :projectDescription, 
  :projectTitle, :researchArea, :researcher, :unpaid_grads_needed, 
  :paid_grads_needed, :unpaid_undergrads_needed, :paid_undergrads_needed,
  :unpaid_undergrad_positions_attributes, :paid_undergrad_positions_attributes, :lead_researcher
  :research_user_id
  
  validates :research_user_id, :presence => true
	
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
    
    
    
  after_create do
  	if unpaid_undergrads_needed == "0"
  		unpaid_undergrad_positions = UnpaidUndergradPosition.where( :project_survey_id => self.id ).first
  		unpaid_undergrad_positions.destroy
  	end
  end
			
	after_create do
  	if paid_undergrads_needed == "0"
  		paid_undergrad_positions = PaidUndergradPosition.where( :project_survey_id => self.id ).first
  		paid_undergrad_positions.destroy
  	end
  end
															
end
