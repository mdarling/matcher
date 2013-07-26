class ProjectSurveysController < ApplicationController
  # GET /project_surveys
  # GET /project_surveys.json
  def index
    @project_surveys = ProjectSurvey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_surveys }
    end
  end

  # GET /project_surveys/1
  # GET /project_surveys/1.json
  def show
    @project_survey = ProjectSurvey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_survey }
    end
  end

  # GET /project_surveys/new
  # GET /project_surveys/new.json
  def new
    @project_survey = ProjectSurvey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_survey }
    end
  end

  # GET /project_surveys/1/edit
  def edit
    @project_survey = ProjectSurvey.find(params[:id])
  end

  # POST /project_surveys
  # POST /project_surveys.json
  def create
    @project_survey = ProjectSurvey.new(params[:project_survey])

    respond_to do |format|
      if @project_survey.save
        format.html { redirect_to @project_survey, notice: 'Project survey was successfully created.' }
        format.json { render json: @project_survey, status: :created, location: @project_survey }
      else
        format.html { render action: "new" }
        format.json { render json: @project_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_surveys/1
  # PUT /project_surveys/1.json
  def update
    @project_survey = ProjectSurvey.find(params[:id])

    respond_to do |format|
      if @project_survey.update_attributes(params[:project_survey])
        format.html { redirect_to @project_survey, notice: 'Project survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_surveys/1
  # DELETE /project_surveys/1.json
  def destroy
    @project_survey = ProjectSurvey.find(params[:id])
    @project_survey.destroy

    respond_to do |format|
      format.html { redirect_to project_surveys_url }
      format.json { head :no_content }
    end
  end
end
