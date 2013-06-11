class Categoria < ActiveRecord::Base
  attr_accessible :imagen, :nombre

  has_many :subcategorias
end
