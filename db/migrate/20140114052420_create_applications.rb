class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|

    	# Personal Information
    	t.string :name
    	t.string :email
    	t.string :phone_number
    	t.string :year
    	t.string :major

      t.timestamps
    end
  end
end
