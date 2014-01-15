class RushApplicationsController < ApplicationController
	def create
		puts []
		@application = Application.new(params[:application])
		respond_to do |format|
	    if @application.save
	      format.js {render :js => "$('#collapseFour input.submit').html('Thanks!');"}
	    end
	  end
	end
end
