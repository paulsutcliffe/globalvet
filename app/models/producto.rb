class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre, :imagen

  belongs_to :tipo
  belongs_to :subcategoria

  mount_uploader :imagen, ImagenUploader
end
