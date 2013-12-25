class StaticPagesController < ApplicationController
	def index
		@brothers = Brother.all
	end
end
