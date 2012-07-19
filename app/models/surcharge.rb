class Surcharge < ActiveRecord::Base
  attr_accessible :folio, :invoice_id, :monto
  belongs_to :invoices
end