class Locality < ActiveRecord::Base
  attr_accessible :name
  has_many :properties, :dependent => :destroy
  validates :name, presence: true
end