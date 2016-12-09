Rails.application.routes.draw do

	get 'new_project', to: 'pages#new_project'
	namespace :admin do 
  	resources :companies
  	resources :clients do
      post :create_from_form, on: :collection
    end

  	resources :projects
  	resources :project_phases do
  		post :sort, on: :collection
  	end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
