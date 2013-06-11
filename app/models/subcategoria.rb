class Subcategoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre

  has_many :tipos
  has_many :productos
  belongs_to :categoria
end
