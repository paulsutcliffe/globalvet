class Categoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre, :slug, :reinos_ids
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :subcategorias, :through => :reinos, :source => :categorias
  has_many :naturalezas
  has_many :reinos, :through => :naturalezas

  mount_uploader :imagen, ImagenUploader

end
