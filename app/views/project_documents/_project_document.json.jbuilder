json.extract! project_document, :id, :project_id, :title, :created_at, :updated_at
json.url project_document_url(project_document, format: :json)