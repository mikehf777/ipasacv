class Property < ActiveRecord::Base	
  attr_accessible :description, :address, :google_maps, :locality_id, :name, :user_id, :catastral_reference, :pictures_attributes, :services_attributes 
  belongs_to :locality
  belongs_to :user
  has_many :duties
  has_many :videos
  has_many :leases 
  has_many :profiles , :dependent => :destroy

  has_many :services , :dependent  => :destroy
  accepts_nested_attributes_for :services , 
  :reject_if => lambda { |a| a[:nombre].blank? }, 
  :allow_destroy => true

  has_many :pictures , :dependent => :destroy
  accepts_nested_attributes_for :pictures , 
  :reject_if => lambda { |a| a[:picture_descripcion].blank? }, 
  :allow_destroy => true

  validates :locality_id,:name, :address, :google_maps,
    :description, :catastral_reference, presence: true

  def google_iframe
    "#{self.google_maps}&amp;output=embed"
  end
end