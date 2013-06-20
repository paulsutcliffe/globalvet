class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :tipo

  def autocomplete_nombre_de_producto
    render :json => Producto.search(params['term'])
  end

end
