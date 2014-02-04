class RushApplicationsController < ApplicationController
	def create
		@application = Application.new(params[:application])
		respond_to do |format|
	    if @application.save
	    	format.html { render nothing: true }
	    	format.js do 
	      	render :js => "					 
												 $('#rush-application').delay(300).slideUp(1400);
												 $('#apply').hide();
												 $('.alert.alert-success').show(); "
        end
	    else
	    	format.js do
	    		render :js => "$('.alert.alert-danger').show();"
	    	end
	    end
	  end
	end

	def show
		respond_to do |format|
			@all = Application.all
			@all.each do |resume|
	      format.html
	      format.pdf do
	        render :pdf => resume.resume
	      end
	    end
    end
	end
end
