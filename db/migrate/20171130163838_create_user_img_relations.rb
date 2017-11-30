class CreateUserImgRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_img_relations do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :relation_type
      t.text :content_body

      t.timestamps
    end
  end
end
