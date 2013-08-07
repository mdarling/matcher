class UnpaidUndergradPositionsController < ApplicationController
  # GET /unpaid_undergrad_positions
  # GET /unpaid_undergrad_positions.json
  def index
    @unpaid_undergrad_positions = UnpaidUndergradPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unpaid_undergrad_positions }
    end
  end

  # GET /unpaid_undergrad_positions/1
  # GET /unpaid_undergrad_positions/1.json
  def show
  	@project_survey = ProjectSurvey.find(params[:project_survey_id])
    @unpaid_undergrad_position = UnpaidUndergradPosition.where( :project_survey_id => @project_survey.id ).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unpaid_undergrad_position }
    end
  end

  # GET /unpaid_undergrad_positions/new
  # GET /unpaid_undergrad_positions/new.json
  def new
    @unpaid_undergrad_position = UnpaidUndergradPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unpaid_undergrad_position }
    end
  end

  # GET /unpaid_undergrad_positions/1/edit
  def edit
    @unpaid_undergrad_position = UnpaidUndergradPosition.find(params[:id])
  end

  # POST /unpaid_undergrad_positions
  # POST /unpaid_undergrad_positions.json
  def create
  
    @unpaid_undergrad_position = UnpaidUndergradPosition.new(params[:unpaid_undergrad_position])

    respond_to do |format|
      if @unpaid_undergrad_position.save
        format.html { redirect_to @unpaid_undergrad_position, notice: 'Unpaid undergrad position was successfully created.' }
        format.json { render json: @unpaid_undergrad_position, status: :created, location: @unpaid_undergrad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @unpaid_undergrad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unpaid_undergrad_positions/1
  # PUT /unpaid_undergrad_positions/1.json
  def update
  	
    @unpaid_undergrad_position = UnpaidUndergradPosition.find(params[:id])

    respond_to do |format|
      if @unpaid_undergrad_position.update_attributes(params[:unpaid_undergrad_position])
        format.html { redirect_to @unpaid_undergrad_position, notice: 'Unpaid undergrad position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unpaid_undergrad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpaid_undergrad_positions/1
  # DELETE /unpaid_undergrad_positions/1.json
  def destroy
    @unpaid_undergrad_position = UnpaidUndergradPosition.find(params[:id])
    @unpaid_undergrad_position.destroy

    respond_to do |format|
      format.html { redirect_to unpaid_undergrad_positions_url }
      format.json { head :no_content }
    end
  end
end
