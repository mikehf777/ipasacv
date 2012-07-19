class Duty < ActiveRecord::Base
  attr_accessible :fecha, :monto, :property_id
  belongs_to :property
end