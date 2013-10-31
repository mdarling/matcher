class DepartmentsController < ApplicationController

	# GET /departments/1
	# GET /departments/1.json
	def show
		@department = Department.find(params[:id])

		@paid_grad_postions = @department.project_surveys.where("project_surveys.paid_grads_needed != ?","0")
		@unpaid_grad_postions = @department.project_surveys.where("project_surveys.unpaid_grads_needed != ?","0")
		@paid_grad_postions = @department.project_surveys.where("project_surveys.paid_undergrads_needed != ?","0")
		@unpaid_grad_postions = @department.project_surveys.where("project_surveys.unpaid_undergrads_needed != ?","0")
		@post_doc_postions = @department.project_surveys.where("project_surveys.post_docs_needed != ?","0")


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
