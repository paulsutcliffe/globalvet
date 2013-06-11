class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre

  belongs_to :tipo
  belongs_to :subcategoria
end
