class Reino < ActiveRecord::Base
  attr_accessible :imagen, :nombre, :slug
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :categorias

  mount_uploader :imagen, ImagenUploader
end
