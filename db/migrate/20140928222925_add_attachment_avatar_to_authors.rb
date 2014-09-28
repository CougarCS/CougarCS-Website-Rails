class AddAttachmentAvatarToAuthors < ActiveRecord::Migration
  def self.up
    change_table :authors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :authors, :avatar
  end
end
