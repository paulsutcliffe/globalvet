class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre
end
