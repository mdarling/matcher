class PaidUndergradPositionsController < ApplicationController
  # GET /paid_undergrad_positions
  # GET /paid_undergrad_positions.json
  def index
    @paid_undergrad_positions = PaidUndergradPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paid_undergrad_positions }
    end
  end

  # GET /paid_undergrad_positions/1
  # GET /paid_undergrad_positions/1.json
  def show
    @paid_undergrad_position = PaidUndergradPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paid_undergrad_position }
    end
  end

  # GET /paid_undergrad_positions/new
  # GET /paid_undergrad_positions/new.json
  def new
    @paid_undergrad_position = PaidUndergradPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paid_undergrad_position }
    end
  end

  # GET /paid_undergrad_positions/1/edit
  def edit
    @paid_undergrad_position = PaidUndergradPosition.find(params[:id])
  end

  # POST /paid_undergrad_positions
  # POST /paid_undergrad_positions.json
  def create
    @paid_undergrad_position = PaidUndergradPosition.new(params[:paid_undergrad_position])

    respond_to do |format|
      if @paid_undergrad_position.save
        format.html { redirect_to @paid_undergrad_position, notice: 'Paid undergrad position was successfully created.' }
        format.json { render json: @paid_undergrad_position, status: :created, location: @paid_undergrad_position }
      else
        format.html { render action: "new" }
        format.json { render json: @paid_undergrad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paid_undergrad_positions/1
  # PUT /paid_undergrad_positions/1.json
  def update
    @paid_undergrad_position = PaidUndergradPosition.find(params[:id])

    respond_to do |format|
      if @paid_undergrad_position.update_attributes(params[:paid_undergrad_position])
        format.html { redirect_to @paid_undergrad_position, notice: 'Paid undergrad position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paid_undergrad_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paid_undergrad_positions/1
  # DELETE /paid_undergrad_positions/1.json
  def destroy
    @paid_undergrad_position = PaidUndergradPosition.find(params[:id])
    @paid_undergrad_position.destroy

    respond_to do |format|
      format.html { redirect_to paid_undergrad_positions_url }
      format.json { head :no_content }
    end
  end
end
