class Project < ApplicationRecord
	belongs_to :client
	has_many :project_phases

	accepts_nested_attributes_for :project_phases, allow_destroy: :true

	STATUS = ['potential_new', 'signed' ,'in_progress', 'complete']
	APP_TYPE = ['existing_site', 'static_website', 'dynamic_website', 'ecommerce', 'market_place', 'web_application']
	BUDGET_RANGE = ['$2,000_$5,000', '$5,000_$10,000', '$10,000_$20,000', '$20,000+']
	PLATFORM = ['rails', 'shopify', 'wordpress']

	PROJECT_PHASES_WORDPRESS = [
		['Site Architecture', 'In this phase we will work with you to distill all of the required information for the site. We will discuss what content will likely need to be updated and what can be static. The idea is to create a site that is dynamic with editable content, but not make everything so customizable to the point where maintenance is a headache. We will investigate the best options for video storage and look at designs to see how best to architect the new site. This phase will culminate in the creation of a more detailed spec document that encompasses all features of the build.'],
		['Data Migration', 'In this phase we will go over all components of the current site that need to be migrated to the new site. We will ensure that all data is properly formatted for the new build and complete the necessary migration.' ],
		['Development', "In this phase the site architecture and visual design will be merged to develop a functional website. All views will be developed to work across modern browser and devices. Interactive elements will be created to make for a more interesting and functional user experience."],
		['Testing', "In this phase we will work to make sure the site adheres to web standards and functions as expected. This is also the point where you can test out the site and make any necessary revisions." ]
	]
	PROJECT_PHASES_RAILS = []
	PROJECT_PHASES_SHOPIFY = []
end
