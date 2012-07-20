class Image < ActiveRecord::Base
  attr_accessible :image_content_type, :image_description, :image_file_name, :image_file_size, :video_id , :image
  belongs_to :video
  has_attached_file :image , :styles => {:large => "650x400" , :thumb => "80x80>"  } , 
  :path => ":rails_root/public/images/videos/:id/:style/:basename.:extension",
  :url => "/images/videos/:id/:style/:basename.:extension"
end
