class RentDocument < ActiveRecord::Base
  attr_accessible :document_id, :rent_id, :url
  belongs_to :document
  belongs_to :rent
end