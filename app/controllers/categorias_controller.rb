class CategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :reino

  def create
    create!(notice: "Categoria creada exitosamente") { reino_categoria_subcategorias_path(@categoria.reino, @categoria) }
  end

  def update
    update!(notice: "Categoria actualizada exitosamente") { reino_categoria_subcategorias_path(@categoria.reino, @categoria) }
  end
end
