class HomeController < ApplicationController
  def researcher
  	@project_surveys = ProjectSurvey.where( :research_user_id => current_research_user )
  	
  end
end
