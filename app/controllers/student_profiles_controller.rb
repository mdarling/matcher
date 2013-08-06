class StudentProfilesController < ApplicationController
  # GET /student_profiles
  # GET /student_profiles.json
  def index
    #@project_surveys = ProjecstSurvey.all
		@search = StudentProfile.search(params[:q])
  	@student_profiles = @search.result
	 	if params[:q]
  		@searched = params[:q]["department_cont"]
  	end
  	@departments = Department.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_profiles }
    end
  end

  # GET /student_profiles/1
  # GET /student_profiles/1.json
  def show
    @student_profile = StudentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_profile }
    end
  end

  # GET /student_profiles/new
  # GET /student_profiles/new.json
  def new
    @student_profile = StudentProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_profile }
    end
  end

  # GET /student_profiles/1/edit
  def edit
    @student_profile = StudentProfile.find(params[:id])
  end

  # POST /student_profiles
  # POST /student_profiles.json
  def create
  	@user = current_user
    @student_profile = StudentProfile.new(params[:student_profile])
    @student_profile.user_id = @user.id

    respond_to do |format|
      if @student_profile.save
        format.html { redirect_to @student_profile, notice: 'Student profile was successfully created.' }
        format.json { render json: @student_profile, status: :created, location: @student_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @student_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_profiles/1
  # PUT /student_profiles/1.json
  def update
    @student_profile = StudentProfile.find(params[:id])

    respond_to do |format|
      if @student_profile.update_attributes(params[:student_profile])
        format.html { redirect_to @student_profile, notice: 'Student profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_profiles/1
  # DELETE /student_profiles/1.json
  def destroy
    current_user.student_profile.destroy
    

    respond_to do |format|
      format.html { redirect_to student_profiles_url }
      format.json { head :no_content }
    end
  end
end
