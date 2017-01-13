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
					    $('.alert.alert-success').show(); 
					"
				end
			else
				format.js do
					render :js => "$('.alert.alert-danger').show();"
				end
			end
		end
	end

	def show
		@application = Application.find(params[:id])
		respond_to do |format|
			format.html
			format.pdf do
				render :pdf => "file_name",
				:template => 'rush_applications/show.pdf.html.erb'
			end
		end
	end
end
