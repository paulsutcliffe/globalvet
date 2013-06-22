class ReinosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def create
    create!(notice: "Reino creado exitosamente") { reino_categorias_path(@reino) }
  end

  def update
    update!(notice: "Reino actualizado exitosamente") { reino_categorias_path(@reino) }
  end
end
