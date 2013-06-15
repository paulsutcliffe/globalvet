class Categoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :subcategorias

  mount_uploader :imagen, ImagenUploader
end
