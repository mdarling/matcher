class CreateProjectSurveys < ActiveRecord::Migration
  def change
    create_table :project_surveys do |t|
      t.string :projectTitle
      t.text :projectDescription
      t.string :email
      t.string :phone
      t.string :department
      t.text :researchArea

      t.timestamps
    end
  end
end
