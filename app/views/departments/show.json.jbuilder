json.extract! @department, :name

json.unpaid_grad_positions do
	json.array!(@unpaid_grad_positions) do |position|
		json.extract! position, :project_title, :research_area, :project_description, :lead_researcher
	end
end

json.paid_grad_positions do
	json.array!(@paid_grad_positions) do |position|
		json.extract! position, :project_title, :research_area, :project_description, :lead_researcher
	end
end

json.unpaid_undergrad_positions do
	json.array!(@unpaid_undergrad_positions) do |position|
		json.extract! position, :project_title, :research_area, :project_description, :lead_researcher
	end
end

json.paid_undergrad_positions do
	json.array!(@paid_undergrad_positions) do |position|
		json.extract! position, :project_title, :research_area, :project_description, :lead_researcher
	end
end

json.post_doc_positions do
	json.array!(@post_doc_positions) do |position|
		json.extract! position, :project_title, :research_area, :project_description, :lead_researcher
	end
end
#
