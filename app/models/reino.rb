class Reino < ActiveRecord::Base
  attr_accessible :imagen, :nombre, :slug, :indice, :icono
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :naturalezas
  has_many :categorias, :through => :naturalezas
  has_many :subcategorias
  has_many :productos

  mount_uploader :imagen, ImagenUploader
  mount_uploader :icono, IconoUploader

  def agregado_en?(categoria)
    self.categorias.include?(categoria)
  end

  def categorias_no_agregadas
    Categoria.find(:all) - self.categorias
  end
end
