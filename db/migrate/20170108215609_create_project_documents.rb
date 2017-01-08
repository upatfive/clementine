class CreateProjectDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :project_documents do |t|
      t.references :project, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
