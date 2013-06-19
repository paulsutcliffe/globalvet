class Subcategoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre, :slug
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :tipos
  belongs_to :categoria

  mount_uploader :imagen, ImagenUploader
end
