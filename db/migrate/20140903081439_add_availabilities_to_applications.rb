class AddAvailabilitiesToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :availabilities, :text
  end
end
