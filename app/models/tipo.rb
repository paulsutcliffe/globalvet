class Tipo < ActiveRecord::Base
  attr_accessible :imagen, :nombre
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :productos
  belongs_to :subcategoria

  mount_uploader :imagen, ImagenUploader
end
