class AddEducationAndWorkToBrothers < ActiveRecord::Migration
  def change
    add_column :brothers, :education, :string
    add_column :brothers, :work, :string
  end
end
