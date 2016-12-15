class PagesController < ApplicationController

	def new_project
		@project = Project.new
	end

end