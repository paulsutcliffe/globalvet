class SubtiposController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def index
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
    @tipo = Tipo.find(params[:tipo_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @subtipos = Subtipo.where("tipo_id = ?", @tipo.id)
    @productos = Producto.where("reino_id = ? AND tipo_id = ? AND subtipo_id IS NULL", @reino.id, @tipo.id)
  end

  def new
    @tipo = Tipo.find(params[:tipo_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @subtipo = Subtipo.new
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def edit
    @tipo = Tipo.find(params[:tipo_id])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @subtipo = Subtipo.find(params[:id])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
  end

  def update
    update! { reino_categoria_subcategoria_tipo_subtipos_path(params[:reino_id], params[:categoria_id], params[:subcategoria_id], params[:tipo_id])}
  end

  def destroy
    destroy! { reino_categoria_subcategoria_tipo_subtipos_path(params[:reino_id], params[:categoria_id], params[:subcategoria_id], params[:tipo_id])}
  end

  def create
    @subtipo = Subtipo.new(params[:subtipo])
    @subcategoria = Subcategoria.find(params[:subcategoria_id])
    @tipo = Tipo.find(params[:tipo_id])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subtipo.tipo_id = @tipo.id
    create! { reino_categoria_subcategoria_tipo_subtipos_path(params[:reino_id], params[:categoria_id], params[:subcategoria_id], params[:tipo_id])}
  end
end
