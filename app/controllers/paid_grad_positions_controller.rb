class PaidGradPositionsController < ApplicationController
  # GET /paid_grad_positions
  # GET /paid_grad_positions.json
  def index
    @paid_grad_positions = PaidGradPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paid_grad_positions }
    end
  end

  # GET /paid_grad_positions/1
  # GET /paid_grad_positions/1.json
  def show
    @paid_grad_position = PaidGradPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paid_grad_position }
    end
  end

  # GET /paid_grad_positions/new
  # GET /paid_grad_positions/new.json
  def new
    @paid_grad_position = PaidGradPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paid_grad_position }
    end
  end

  # GET /paid_grad_positions/1/edit
  def edit
    @paid_grad_position = PaidGradPosition.find(params[:id])
  end

  # POST /paid_grad_positions
  # POST /paid_grad_positions.json
  def create
    @project_survey = ProjectSurvey.find(params[:project_survey_id])
    @paid_grad_position = @project_survey.paid_grad_position.create!(params[:paid_grad_position])
    respond_to do |format|
      if @paid_grad_position.save
        format.html { redirect_to @paid_grad_position, notice: 'Paid grad position was successfully created.' }
        format.json { render json: @paid_grad_position, status: :created, location: @paid_grad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @paid_grad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paid_grad_positions/1
  # PUT /paid_grad_positions/1.json
  def update
    @paid_grad_position = PaidGradPosition.find(params[:id])

    respond_to do |format|
      if @paid_grad_position.update_attributes(params[:paid_grad_position])
        format.html { redirect_to @paid_grad_position, notice: 'Paid grad position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paid_grad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paid_grad_positions/1
  # DELETE /paid_grad_positions/1.json
  def destroy
    @paid_grad_position = PaidGradPosition.find(params[:id])
    @paid_grad_position.destroy

    respond_to do |format|
      format.html { redirect_to paid_grad_positions_url }
      format.json { head :no_content }
    end
  end
end
