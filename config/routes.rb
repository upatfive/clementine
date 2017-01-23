Rails.application.routes.draw do

  devise_for :users
  get 'new_project', to: 'pages#new_project'
  
  namespace :admin do 
    resources :companies
    get 'project/pdf_proposal/:id' => 'projects#proposal_download'
    resources :clients do
      post :create_from_form, on: :collection
    end

    resources :projects
    resources :project_phases do
      post :sort, on: :collection
    end
    resources :project_documents
	end

  root to: 'admin/projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
