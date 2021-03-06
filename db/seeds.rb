# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


departments =
[
	{name: 'College of Pharmacy', shortname: 'PHRM'},
	{name: 'Biochemistry & Molecular Biology', shortname: 'BIOC'},
	{name: 'Health Sciences', shortname: 'HSC'},
	{name: 'Pathology', shortname: 'MEDL'},
	{name: 'Radiology', shortname: 'RADS'},
	{name: 'Educational Leadership and Organizational Learning', shortname: 'ELOL'},
	{name: 'Educational Specialties', shortname: 'ES'},
	{name: 'Health, Exercise, and Sports Sciences', shortname: 'HESS'},
	{name: 'Individual, Family, and Community Education', shortname: 'IFCE'},
	{name: 'Language, Literacy, and Sociocultural Studies', shortname: 'LLSS'},
	{name: 'Teacher Education', shortname: 'TED'},
	{name: 'Nursing', shortname: 'NURS'},
	{name: 'School of Public Administration', shortname: 'SPA'},
	{name: 'University College', shortname: 'UC'},
	{name: 'School of Law', shortname: 'LAW'},
	{name: 'Honors College ', shortname: 'HC'},
	{name: 'Art & Art History', shortname: 'ARTH'},
	{name: 'Music', shortname: 'MUS'},
	{name: 'Theatre & Dance', shortname: 'DANC'},
	{name: 'Cinematic Arts', shortname: 'MA'},
	{name: 'American Studies', shortname: 'AMST'},
	{name: 'Anthropology', shortname: 'ANTH'},
	{name: 'Biochemistry', shortname: 'BIOC'},
	{name: 'Chemistry and Chemical Biology', shortname: 'CHEM'},	
	{name: 'Communication & Journalism', shortname: 'CJ'},
	{name: 'Earth & Planetary Sciences', shortname: 'EPS'},
	{name: 'Economics', shortname: 'ECON'},
	{name: 'English', shortname: 'ENGL'},
	{name: 'Foreign Languages & Literature', shortname: 'FLL'},
	{name: 'Geography', shortname: 'GEOG'},
	{name: 'History', shortname: 'HIST'},
	{name: 'Linguistics', shortname: 'LING'},
	{name: 'Mathematics and Statistics', shortname: 'MATH'},
	{name: 'Philosophy', shortname: 'PHIL'},
	{name: 'Physics & Astronomy', shortname: 'PHYC'},
	{name: 'Political Science', shortname: 'POLS'},
	{name: 'Psychology', shortname: 'PSY'},
	{name: 'Sociology', shortname: 'SOC'},
	{name: 'Spanish & Portuguese', shortname: 'SPANPORT'},
	{name: 'Speech & Hearing Sciences', shortname: 'SHS'},
	{name: 'Anderson School of Management', shortname: 'ASM'},
	{name: 'Finance, International, Technology & Entrepreneurship', shortname: 'FITE'},
	{name: 'Marketing, Information and Decision Sciences', shortname: 'MIDS'},
	{name: 'Department of Organizational Studies', shortname: 'DOS'},
	{name: 'School of Architecture and Planning', shortname: 'SAAP'},
	{name: 'Organization, Information and Learning Sciences', shortname: 'OILS'},
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
  department_refs[department[:name]] = Department.create department
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
