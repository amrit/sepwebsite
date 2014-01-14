class AddAttachmentPictureToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :applications, :picture
  end
end