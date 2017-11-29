class Image < ApplicationRecord

  belongs_to :user

  has_attached_file :image, {styles: {large: "200x200"},
  :url => "/public/images/:img_file_file_name.:img_file_content_type",
  :path => "rails_root/public/images/:style/:img_file_file_name.:img_file_content_type",
  :default_url => "https://blog.sqlauthority.com/i/a/errorstop.png"
  }


end
