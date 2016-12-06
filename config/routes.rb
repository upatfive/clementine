Rails.application.routes.draw do

	namespace :admin do 
  	resources :companies
  	resources :clients
  	resources :projects
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
