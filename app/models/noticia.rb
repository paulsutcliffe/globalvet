class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :imagen, :titulo, :slug, :link
  extend FriendlyId
  friendly_id :titulo, use: :slugged

  mount_uploader :imagen, ImagenUploader
end
