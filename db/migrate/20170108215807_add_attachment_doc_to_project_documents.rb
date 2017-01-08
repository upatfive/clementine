class AddAttachmentDocToProjectDocuments < ActiveRecord::Migration
  def self.up
    change_table :project_documents do |t|
      t.attachment :doc
    end
  end

  def self.down
    remove_attachment :project_documents, :doc
  end
end
