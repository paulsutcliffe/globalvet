class TiposController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :subcategoria

  def create
    create!(notice: "Tipo creado exitosamente") { reino_categoria_subcategoria_tipos_path(@tipo.subcategoria.categoria.reino, @tipo.subcategoria.categoria, @tipo.subcategoria) }
  end

  def update
    update!(notice: "Tipo actualizado exitosamente") { reino_categoria_subcategoria_tipos_path(@tipo.subcategoria.categoria.reino, @tipo.subcategoria.categoria, @tipo.subcategoria) }
  end
end
