class Subcategoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  has_many :tipos
  has_many :productos
  belongs_to :categoria
end
