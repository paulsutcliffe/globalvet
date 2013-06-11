class ProductosController < InheritedResources::Base
  belongs_to :tipo
  belongs_to :subcategoria

end
