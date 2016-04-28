class AddAttachmentAvatarToAnnounces < ActiveRecord::Migration
  def self.up
    change_table :announces do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :announces, :avatar
  end
end
