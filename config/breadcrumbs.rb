crumb :home do
  link "Database Home", home_path
end

crumb :student_profiles do
  link "Profiles", student_profiles_path
  parent	:home
end

crumb :student_profile do |profile|
  link profile.first_name, student_profiles_path(profile)
  parent :student_profiles	
end

crumb :new_student_profile do |profile|
  link "New", student_profiles_path(profile)
  parent :student_profiles	
end

crumb :project_surveys do
  link "Projects", project_surveys_path
  parent	:home
end

crumb :project_survey do |project|
  link project.project_title, project_surveys_path(project)
  parent :project_surveys 
end

crumb :new_project_survey do |project|
  link "New", project_surveys_path(project)
  parent :project_surveys 
end

crumb :new_user_session do 
  link "Sign In", new_user_session_path
  parent :home 
end

crumb :new_user_signup do 
  link "Sign Up", new_user_registration_path
  parent :home 
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
