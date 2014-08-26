class AddProjectsToBrothers < ActiveRecord::Migration
  def change
    add_column :brothers, :projects, :string
  end
end
