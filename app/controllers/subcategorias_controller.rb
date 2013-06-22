class SubcategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :categoria

  def create
    create!(notice: "Subcategoria creada exitosamente") { reino_categoria_subcategoria_tipos_path(@subcategoria.categoria.reino, @subcategoria.categoria, @subcategoria) }
  end

  def update
    update!(notice: "Subcategoria actualizada exitosamente") { reino_categoria_subcategoria_tipos_path(@subcategoria.categoria.reino, @subcategoria.categoria, @subtegoria) }
  end
end
