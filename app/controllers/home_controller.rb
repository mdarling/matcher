class HomeController < ApplicationController
  def index
  	@project_surveys = ProjectSurvey.where( :research_user_id => current_research_user )

  end
  
  def researcher
  if admin_signed_in?
  	@researchers = ResearchUser.all
	else
		redirect_to :home, notice: 'Access Denied.' 
  end
end  

end
