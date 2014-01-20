class StaticPagesController < ApplicationController
	def index
		@brothers = Brother.all
		@application = Application.new
		@alumni = Brother.where(:status => "Alumnus").sort_by!{ |m| m.name.downcase }
	end
end
