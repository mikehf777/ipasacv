class Video < ActiveRecord::Base
  attr_accessible  :url , :descripcion , :images_attributes
  has_many :images , :dependent => :destroy
  accepts_nested_attributes_for :images , 
  :reject_if => lambda { |a| a[:image_description].blank? } , 
  :allow_destroy => true
end