class Service < ActiveRecord::Base
  attr_accessible :nombre , :property_id
  belongs_to :property
end