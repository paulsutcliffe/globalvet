class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id])
    @subtipo = Subtipo.find(params[:subtipo_id]) unless params[:subtipo_id] == nil
    if params[:subtipo_id]
      @productos = Producto.where("reino_id = ? AND subtipo_id = ?", @reino.id, @subtipo.id)
    else
      if params[:tipo_id]
        @productos = Producto.where("reino_id = ? AND tipo_id = ?", @reino.id, @tipo.id)
      else
        @productos = Producto.where("reino_id = ? AND subcategoria = ?", @reino.id, @subcategoria.id)
      end
    end
  end

  def new
    @producto = Producto.new
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @subtipo = Subtipo.find(params[:subtipo_id]) unless params[:subtipo_id] == nil
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
    @subtipo = Subtipo.find(params[:subtipo_id]) unless params[:subtipo_id] == nil
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
    if params[:subtipo_id]
      update! { reino_categoria_subcategoria_tipo_subtipo_productos_path(@reino, @categoria, @subcategoria, @tipo, @subtipo) }
    else
      if params[:tipo_id]
        update! { reino_categoria_subcategoria_tipo_subtipos_path(@reino, @categoria, @subcategoria, @tipo) }
      else
        update! { reino_categoria_subcategoria_tipos_path(@reino, @categoria, @subcategoria) }
      end
    end
  end

  def create
    @producto = Producto.new(params[:producto])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @subtipo = Subtipo.find(params[:subtipo_id]) unless params[:subtipo_id] == nil
    @producto.subcategoria_id = @subcategoria.id
    @producto.reino_id = @reino.id
    if params[:subtipo_id] == nil
      @producto.tipo_id = @tipo.id
      create! { reino_categoria_subcategoria_tipos_path(@reino, @categoria, @subcategoria)}
    else
      @producto.tipo_id = @tipo.id
      @producto.subtipo_id = @subtipo.id
      create! { reino_categoria_subcategoria_tipo_subtipo_productos_path(@reino, @categoria, @subcategoria, @tipo, @subtipo)}
    end
  end

  def show
    @producto = Producto.find(params[:id])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id]) unless params[:tipo_id] == nil
    @subtipo = Subtipo.find(params[:subtipo_id]) unless params[:subtipo_id] == nil
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
