class AddPressToBrothers < ActiveRecord::Migration
  def change
    add_column :brothers, :press, :string
  end
end
