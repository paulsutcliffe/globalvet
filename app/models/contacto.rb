class Contacto < ActiveRecord::Base
  attr_accessible :email, :mensaje, :nombre, :telefono

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :nombre, :presence => true
  validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX
  validates :mensaje, :presence => true
end
