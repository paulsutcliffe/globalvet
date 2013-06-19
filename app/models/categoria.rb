class Categoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre, :slug
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :subcategorias
  belongs_to :reino

  mount_uploader :imagen, ImagenUploader
end
