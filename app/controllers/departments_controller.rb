class DepartmentsController < ApplicationController

	# GET /departments/1
	# GET /departments/1.json
	def show
		@department = Department.find(params[:id])
		@department_url = @department.get_url
		
		@paid_grad_positions = []
		@unpaid_grad_positions = []
		@paid_undergrad_positions = []
		@unpaid_undergrad_positions = []
		@post_doc_positions = []
		
		all_project_surveys = ProjectSurvey.where(department: @department.name)
		
		all_project_surveys.each do |project_survey|
			if project_survey.paid_grads_needed.to_i > 0
				@paid_grad_positions << project_survey
			end
			
			if project_survey.unpaid_grads_needed.to_i > 0
				@unpaid_grad_positions << project_survey
			end
			
			if project_survey.paid_undergrads_needed.to_i > 0
				@paid_undergrad_positions << project_survey
			end
		
			if project_survey.unpaid_undergrads_needed.to_i > 0
				@unpaid_undergrad_positions << project_survey
			end
			
			if project_survey.post_docs_needed.to_i > 0
				@post_doc_positions << project_survey
			end
		end
		
		
		# Department will now render json by default.
		# In order to add html response, in config/routes.rb change the line:
		#		resources :departments, only: [:show], defaults: {format: :json}
		# to:
		#		resources :departments, only: [:show]
		# Also, uncomment the following four lines:
		#respond_to do |format|
		#  format.html # index.html.erb
		#  format.json # index.json.jbuilder
		#end

	end

end
#
#
