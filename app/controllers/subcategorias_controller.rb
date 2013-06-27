class SubcategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def index
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
    @subcategorias = Subcategoria.where("reino_id = ? AND categoria_id = ?", @reino.id, @categoria.id)
  end

  def new
    @subcategoria = Subcategoria.new
    @categoria = Categoria.find(params[:categoria_id])
    @reino = Reino.find(params[:reino_id])
  end

  def create
    @subcategoria = Subcategoria.new(params[:subcategoria])
    @reino = Reino.find(params[:reino_id])
    @categoria = Categoria.find(params[:categoria_id])
    @subcategoria.categoria_id = @categoria.id
    @subcategoria.reino_id = @reino.id
    create! { reino_categoria_subcategorias_path(params[:reino_id], params[:categoria_id])}
  end
end
