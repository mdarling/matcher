class HomeController < ApplicationController
  def index
  	@project_surveys = ProjectSurvey.where( :research_user_id => current_research_user )

  end
end
