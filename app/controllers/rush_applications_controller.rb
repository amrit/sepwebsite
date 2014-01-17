class RushApplicationsController < ApplicationController
	def create
		puts []
		@application = Application.new(params[:application])
		respond_to do |format|
	    if @application.save
	      format.js {}
	    end
	  end
	end
end
