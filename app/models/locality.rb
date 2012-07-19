class Locality < ActiveRecord::Base
  attr_accessible :name
  has_many :properties
  validates :name, presence: true
end