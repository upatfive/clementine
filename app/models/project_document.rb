class ProjectDocument < ApplicationRecord
  belongs_to :project

  has_attached_file :doc
  validates_attachment_content_type :doc, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
end
