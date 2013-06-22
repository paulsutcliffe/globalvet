class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show, :autocompletar_nombre_de_producto]
  belongs_to :tipo

  def autocompletar_nombre_de_producto
    render :json => Producto.search(params['term'])
  end

end
