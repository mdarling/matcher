class PostDocController < ApplicationController
  
  def create
    @project_survey = ProjectSurvey.find(params[:project_survey_id])
    @post_doc = @project_survey.paid_grad_position.create!(params[:post_doc])
    respond_to do |format|
      if @post_doc.save
        format.html { redirect_to @post_doc, notice: 'Paid grad position was successfully created.' }
        format.json { render json: @post_doc, status: :created, location: @paid_grad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @post_doc_position.errors, status: :unprocessable_entity }
      end
    end
  end
end
