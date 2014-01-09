class AddStatusToBrothers < ActiveRecord::Migration
  def change
  	add_column :brothers, :status, :string
  end
end
