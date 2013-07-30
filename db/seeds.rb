# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
departments = 
[
	{name: 'Biology', shortname: 'BIO', college_id: 47},
  {name: 'Chemical & Nuclear Engineering', shortname: 'CNE', college_id: 50},
  {name: 'Civil Engineering', shortname: 'CE', college_id: 50},
  {name: 'Computer Science', shortname: 'CS', college_id: 50},
  {name: 'Electrical & Computer Engineering', shortname: 'ECE', college_id: 50},
  {name: 'Mechanical Engineering', shortname: 'ME', college_id: 50},
	{name: 'Mathematics', shortname: 'MATH', college_id: 47},
]
    
Department.delete_all
department_refs = {}
departments.each do |department|
  department_refs[department[:shortname]] = Department.create department
end 

colleges = 
[
	{name: 'University College', shortname: 'UC'}, 
	{name: 'Honors College', shortname: 'HC'}, 
	{name: 'School of Public Administration', shortname: 'SPA'}, 
	{name: 'College of Fine Arts', shortname: 'CFA'}, 
	{name: 'College of Arts & Sciences', shortname: 'AS'}, 
	{name: 'Anderson School of Management', shortname: 'ASM'}, 
	{name: 'College of Education', shortname: 'COE'}, 
	{name: 'School of Engineering', shortname: 'SOE'}, 
	{name: 'School of Law ', shortname: 'LAW'}, 
	{name: 'School of Architecture and Planning', shortname: 'SAAP'}, 
	{name: 'University Libraries', shortname: 'UL'}, 
	{name: 'School of Medicine', shortname: 'MED'}, 
	{name: 'College of Nursing', shortname: 'NURS'}, 
	{name: 'College of Pharmacy', shortname: 'PHRM'}, 		
]
  
#College.delete_all
#college_refs = {}
#colleges.each do |college|
#  department_refs[college[:shortname]] = College.create college
#end 
