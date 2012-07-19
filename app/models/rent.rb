class Rent < ActiveRecord::Base
  attr_accessible :descuento, :fecha_fin, :fecha_inicio, :property_user_id
  has_many :rent_documents
  has_many :documents , through: :rent_documents
  has_many :invoices
  belongs_to :lease_user
end