class ChangeBrotherClassToPledgeClass < ActiveRecord::Migration
  def change
  	rename_column :brothers, :class, :pledge_class
  end
end
