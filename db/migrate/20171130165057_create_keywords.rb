class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.string :keyword_content
      t.integer :image_id
    end
  end
end
