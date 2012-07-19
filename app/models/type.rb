class Type < ActiveRecord::Base
  attr_accessible :name
  has_many :profiles
end