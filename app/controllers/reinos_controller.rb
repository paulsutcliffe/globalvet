class ReinosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def create
    create! { categorias_reino_path(@reino) }
  end

  #def update
  #  update!(notice: "categoria actualizado exitosamente") { categoria_reinos_path(@categoria) }
  #end


  def new
    @reino = Reino.new
    @categorias = Categoria.all
  end

  def edit
    @reino = Reino.find(params[:id])
    @categorias = Categoria.all
  end

  def categorias
    @reino = Reino.find_by_slug(params[:id])
    @categorias = @reino.categorias
  end

  def enlistar
    @reino = Reino.find(params[:id])
    @categorias = @reino.categorias
  end

  def agregar_categoria
    @reino = Reino.find_by_slug(params[:reino_id])
    @categoria = Categoria.find(params[:categoria])
    unless @reino.agregado_en?(@categoria)
      @reino.categorias << @categoria
      flash[:notice] = 'categoria agregado'
    else
      flash[:notice] = 'reino ya ha sido enlistada'
    end
    redirect_to categorias_reino_path(@reino)
  end

  def eliminar_categoria
    @reino = Reino.find_by_slug(params[:reino_id])

    categorias_ids = params[:categorias]

    unless categorias_ids.blank?
      categorias_ids.each do |categoria_id|
        categoria = Categoria.find(categoria_id)
        if @reino.agregado_en?(categoria)
          logger.info "Eliminando reinos del categoria #{categoria.id}"
          @reino.categorias.delete(categoria)
          flash[:notice] = 'categoria eliminado'
        end
      end
    end
    redirect_to categorias_reino_path(@reino)
  end
end
