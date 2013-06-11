class Tipo < ActiveRecord::Base
  attr_accessible :imagen, :nombre

  has_many :productos
  belongs_to :categoria
end
