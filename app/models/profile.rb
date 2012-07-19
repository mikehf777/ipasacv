class Profile < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :type_id , :property_id , :photos_attributes , :banos , :recamaras ,:sala ,:cocina , :cuarto
  belongs_to :property
  belongs_to :type
  #paperclip
  has_many :photos , :dependent => :destroy
  accepts_nested_attributes_for :photos , 
  :reject_if => lambda { |a| a[:photo_descripcion].blank? } , 
  :allow_destroy => true
end