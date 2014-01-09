class StaticPagesController < ApplicationController
	def index
		@brothers = Brother.all
		@application = Application.new
	end
end
