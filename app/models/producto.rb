class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre, :imagen, :slug
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  belongs_to :tipo

  mount_uploader :imagen, ImagenUploader
  mount_uploader :archivo_pdf, PdfUploader
end
