class Message
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :nombre, :email, :asunto, :mensaje
  
  def initialize(attributes = {})
    attributes.each do |nombre, value|
      send("#{nombre}=", value)
    end
  end

  def persisted?
    false
  end

end