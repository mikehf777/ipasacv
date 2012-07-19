class Photo < ActiveRecord::Base
attr_accessible :photo_content_type, :photo_descripcion, :photo_file_name, :photo_file_size, :profile_id , :photo
belongs_to :profile
has_attached_file :photo , :styles => {:large => "650x400" , :thumb => "80x80>"  } , 
  :path => ":rails_root/public/images/inmuebles/:id/:style/:basename.:extension",
  :url => "/images/inmuebles/:id/:style/:basename.:extension"
end