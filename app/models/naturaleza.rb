class Naturaleza < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :reino
  has_many :subcategorias
end
