class Lease < ActiveRecord::Base
  attr_accessible :descripcion, :num_int, :precio, :status_renta, :user_id, :profile_id
  belongs_to :profile

  def en_renta?
  	self.status_renta ? 'En renta' : 'Disponible' 
  end
end