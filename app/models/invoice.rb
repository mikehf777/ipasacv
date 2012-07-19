class Invoice < ActiveRecord::Base
  attr_accessible :fecha_vencimiento, :folio, :monto, :rent_id
  belongs_to :rent
  has_many :surcharges
  
end