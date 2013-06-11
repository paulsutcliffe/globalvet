class Contacto < ActiveRecord::Base
  attr_accessible :email, :mensaje, :nombre, :telefono
end
