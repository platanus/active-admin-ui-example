class AddAttachmentPictureToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :applications, :picture
  end
end
