class TiposController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def index
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipos = Tipo.where("subcategoria_id = ?", @subcategoria.id)
    @productos = Producto.where("reino_id = ? AND subcategoria_id = ? AND tipo_id IS NULL AND subtipo_id IS NULL", @reino.id, @subcategoria.id)
  end

  def new
    @tipo = Tipo.new
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def edit
    @tipo = Tipo.find(params[:id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def update
    update! { reino_categoria_subcategoria_tipos_path(params[:reino_id], params[:categoria_id], params[:subcategoria_id])}
  end

  def create
    @tipo = Tipo.new(params[:tipo])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo.subcategoria_id = @subcategoria.id
    create! { reino_categoria_subcategoria_tipos_path(@reino, @categoria, @subcategoria)}
  end
end
