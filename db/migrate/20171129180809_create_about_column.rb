class CreateAboutColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about, :text
  end
end
