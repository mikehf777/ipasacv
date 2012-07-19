class Document < ActiveRecord::Base
  attr_accessible :nombre
  has_many :rent_documents
  has_many :rents , through: :rent_documents
end