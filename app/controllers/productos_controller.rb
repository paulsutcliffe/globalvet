class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  belongs_to :tipo
  belongs_to :subcategoria

end
