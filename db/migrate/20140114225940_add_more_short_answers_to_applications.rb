class AddMoreShortAnswersToApplications < ActiveRecord::Migration
  def change
  	add_column :applications, :short_answer3, :text
  	add_column :applications, :short_answer4, :text
  end
end
