class CreateImages < ActiveRecord::Migration[5.0]
  def self.up
    create_table :images do |t|
      t.attachment :img_file

      t.timestamps
    end
  end

  def self.down
    drop_attached_file :images, :img_file
  end
end
