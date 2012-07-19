class Video < ActiveRecord::Base
  attr_accessible :property_id, :url , :descripcion
  belongs_to :property
end