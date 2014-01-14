class AddPromptsToApplication < ActiveRecord::Migration
  def change
  	add_column :applications, :prompt1, :string
  	add_column :applications, :prompt2, :string
  end
end
