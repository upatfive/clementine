class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :project_contact
      t.string :project_email
      t.string :app_type
      t.boolean :design_needed
      t.text :inspiration
      t.date :start_date
      t.date :end_date
      t.string :budget_range
      t.text :about_the_project
      t.boolean :potential_new
      t.boolean :paid

      t.timestamps
    end
  end
end
