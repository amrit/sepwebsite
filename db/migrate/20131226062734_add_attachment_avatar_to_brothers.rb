class AddAttachmentAvatarToBrothers < ActiveRecord::Migration
  def self.up
    change_table :brothers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :brothers, :avatar
  end
end
