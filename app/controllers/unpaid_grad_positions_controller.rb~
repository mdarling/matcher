class UnpaidGradPositionsController < ApplicationController
  # GET /unpaid_grad_positions
  # GET /unpaid_grad_positions.json
  def index
    @unpaid_grad_positions = UnpaidGradPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unpaid_grad_positions }
    end
  end

  # GET /unpaid_grad_positions/1
  # GET /unpaid_grad_positions/1.json
  def show
    @unpaid_grad_position = UnpaidGradPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unpaid_grad_position }
    end
  end

  # GET /unpaid_grad_positions/new
  # GET /unpaid_grad_positions/new.json
  def new
    @unpaid_grad_position = UnpaidGradPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unpaid_grad_position }
    end
  end

  # GET /unpaid_grad_positions/1/edit
  def edit
    @unpaid_grad_position = UnpaidGradPosition.find(params[:id])
  end

  # POST /unpaid_grad_positions
  # POST /unpaid_grad_positions.json
  def create
    @project_survey = ProjectSurvey.find(params[:project_survey_id])
    @unpaid_grad_position = @project_survey.unpaid_grad_position.create!(params[:unpaid_undergrad_position])

    respond_to do |format|
      if @unpaid_grad_position.save
        format.html { redirect_to @unpaid_grad_position, notice: 'Unpaid grad position was successfully created.' }
        format.json { render json: @unpaid_grad_position, status: :created, location: @unpaid_grad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @unpaid_grad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unpaid_grad_positions/1
  # PUT /unpaid_grad_positions/1.json
  def update
    @unpaid_grad_position = UnpaidGradPosition.find(params[:id])

    respond_to do |format|
      if @unpaid_grad_position.update_attributes(params[:unpaid_grad_position])
        format.html { redirect_to @unpaid_grad_position, notice: 'Unpaid grad position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unpaid_grad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpaid_grad_positions/1
  # DELETE /unpaid_grad_positions/1.json
  def destroy
    @unpaid_grad_position = UnpaidGradPosition.find(params[:id])
    @unpaid_grad_position.destroy

    respond_to do |format|
      format.html { redirect_to unpaid_grad_positions_url }
      format.json { head :no_content }
    end
  end
end
