class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id])
    @productos = Producto.where("tipo_id = ?", @tipo.id)
  end

  def new
    @producto = Producto.new
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def edit
    @producto = Producto.find(params[:id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def update
    @producto = Producto.find(params[:id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
    #@producto.subcategoria_id = @subcategoria.id
    #@producto.reino_id = @reino.id
    if params[:tipo_id] == nil
      update! { reino_categoria_subcategoria_tipos_path(@reino, @categoria, @subcategoria)}
    else
      @producto.tipo_id = @tipo.id
      update! { reino_categoria_subcategoria_tipo_productos_path(@reino, @categoria, @subcategoria, @tipo)}
    end



    #update! { reino_categoria_subcategoria_tipo_producto_path(@reino, @categoria, @subcategoria, @tipo, @producto) }
  end

  def create
    @producto = Producto.new(params[:producto])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @producto.subcategoria_id = @subcategoria.id
    @producto.reino_id = @reino.id
    if params[:tipo_id] == nil
      create! { reino_categoria_subcategoria_tipos_path(@reino, @categoria, @subcategoria)}
    else
      @producto.tipo_id = @tipo.id
      create! { reino_categoria_subcategoria_tipo_productos_path(@reino, @categoria, @subcategoria, @tipo)}
    end
  end

  def show
    @producto = Producto.find(params[:id])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
  end

  def autocompletar_nombre_de_producto
    render :json => Producto.search(params['term'])
  end

  def resultado_de_busqueda
    if params['busqueda'].empty?
      redirect_to reinos_path
    else
      @productos = Producto.busqueda(params['busqueda'])
      if @productos.empty?
        redirect_to action: 'sin_resultados', :busqueda => params[:busqueda]
      end
    end
  end

  def sin_resultados

  end

end
