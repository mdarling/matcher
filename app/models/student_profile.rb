class StudentProfile < ActiveRecord::Base
  attr_accessible :academic_level, :email, :expected_graduation, :first_name, 
	:interests, :last_name, :major, :minor, :phone_number, :unm_id, :department, 
	:experience, :user_id

	validates :academic_level, :expected_graduation, :first_name, 
	:interests, :last_name, :major, :phone_number, :unm_id, :department, :user_id, :presence => true
	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i


	validates_uniqueness_of :email
	validates_presence_of :email
	
	belongs_to :user
	
	
  def match 
		#@projects = ProjectSurvey.all
		
		interestArray = interests.split(",")
		interestMatch = false
		projectKnown = true
		sendEmailAbout = []
		match = false
		known_project_ids = self.known_project_ids
		if known_project_ids != nil
			knownProjects = known_project_ids.split(",")

		else
			known_project_ids = "0"
			knownProjects = ['-1']
		end

		if academic_level == "Postdoc"
			@positions = PostDoc.all
			myAcademicLevel = "Postdoc"
		end
		
		if academic_level == "Master's" || academic_level == "PhD"
			@positions = UnpaidGradPosition.all + PaidGradPosition.all
			myAcademicLevel = "Grad"
		end
		
		if academic_level == "Senior" 		
			 @positions = UnpaidUndergradPosition.where( :academic_level => ['Senior','Junior','Sophomore','Freshman'] ) + PaidUndergradPosition.where( :academic_level => ['Senior','Junior','Sophomore','Freshman'] )
			 myAcademicLevel = "Undergrad"
		end
		
		if academic_level == "Junior" 		
			 @positions = UnpaidUndergradPosition.where( :academic_level => ['Junior','Sophomore','Freshman'] ) + PaidUndergradPosition.where( :academic_level => ['Junior','Sophomore','Freshman' ] )
			 myAcademicLevel = "Undergrad"
		end
		
		if academic_level == "Sophomore" 		
			 @positions = UnpaidUndergradPosition.where( :academic_level => ['Sophomore','Freshman'] ) + PaidUndergradPosition.where( :academic_level => ['Sophomore','Freshman'] )
			  myAcademicLevel = "Undergrad"
		end

		if academic_level == "Freshman" 		
			 @positions = UnpaidUndergradPosition.where( :academic_level => ['Freshman'] ) + PaidUndergradPosition.where( :academic_level => ['Freshman'] )
			  myAcademicLevel = "Undergrad"
		end
		
		@positions.each do |position|
			project = position.project_survey
			
			if project != nil
				projectKeywords = project.research_area.split(",")

				projectKeywords.each do |keyword|
					interestArray.each do |interest|
						if keyword.strip == interest.strip
							match = true
						end
					end
				end
			
				if match == true			
					if myAcademicLevel == "Undergrad"
						if project.paid_undergrads_needed == "1" || project.unpaid_undergrads_needed == "1"
								
							knownProjects.each do |knownProject|

									knownProjectInt = knownProject.to_i()
								if knownProjectInt == project.id
									projectKnown = true
								else
									projectKnown = false
									sendEmailAbout.push(project.id)

								end #known project = project id
							end #knownprojects.each 
						end #IF undergrads needed
					end #if myAcademicLevel = undergrad
				end #end if match == true
			

			end #If project != nil
			
		end #End positions.each do
				if sendEmailAbout != 0
					sendEmailAbout = sendEmailAbout.uniq
					#known_project_ids += "," + project.id.to_s()
					known_project_ids = self.known_project_ids
					
					knownProjects = known_project_ids.split(",")
					
					knownProjects.each do |knownProject|
						sendEmailAbout.each do |email|
							if knownProject.to_i() == email
								puts "!!!!!!"
								email = 0;
							end
						end
					end
					#self.save	
					#Send email about those project ids
					puts "SEND EMAIL ABOUT Project Number"
					puts sendEmailAbout
				end
	end #End def 
	
end #End Class
