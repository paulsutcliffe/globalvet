class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]
  belongs_to :tipo

  def autocompletar_nombre_de_producto
    render :json => Producto.search(params['term'])
  end

  def resultado_de_busqueda
    @productos = Producto.busqueda(params['busqueda'])
    if @productos.empty?
      redirect_to action: 'sin_resultados'
    end
  end

  def sin_resultados

  end

end
