class Image < ApplicationRecord

  has_many :users, through: :user_img_relations
  has_many :user_img_relations
  has_many :keywords

  has_attached_file :img_file, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.jpg"


end


# has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.jpg"
#
#
# has_attached_file :img_file, {styles: {large: "200x200"},
# :url => "/public/images/:img_file_file_name.:img_file_content_type",
# :path => "rails_root/public/images/:style/:img_file_file_name.:img_file_content_type",
# :default_url => "https://blog.sqlauthority.com/i/a/errorstop.png"
