class StaticPagesController < ApplicationController
	def index
		@brothers = Brother.where(['status <> ?', 'Alumnus']).sort_by!{ |e| e.name.downcase }
		@application = Application.new
		@alumni = Brother.where(:status => "Alumnus").sort_by!{ |m| m.name.downcase }
	end
end
