class CategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def create
    create! { reino_categorias_path(params[:reino_id]) }
  end
  #def update
  #  update!(notice: "Categoria actualizada exitosamente") { reino_categoria_subcategorias_path(@categoria.reino, @categoria) }
  #end

  def new
    @categoria = Categoria.new
    @reino = Reino.find(params[:reino_id])
  end

  def edit
    @categoria = Categoria.find(params[:id])
    @reinos = Reino.all
  end

  def reinos
    @categoria = Categoria.find_by_slug(params[:categoria_id])
    @reinos = @categoria.reinos
  end

  def enlistar
    @categoria = Categoria.find(params[:id])
    @reinos = @categoria.reinos
  end

  def agregar_reino
    @categoria = Categoria.find_by_slug(params[:categoria_id])
    @reino = Reino.find(params[:reino])
    unless @categoria.enlistado_en?(@reino)
      @categoria.reinos << @reino
      flash[:notice] = 'reino agregado'
    else
      flash[:notice] = 'categoria ya ha sido enlistada'
    end
    redirect_to :action => :reinos
  end

  def eliminar_reino
    @categoria = Categoria.find_by_slug(params[:categoria_id])

    reinos_ids = params[:reinos]

    unless reinos_ids.blank?
      reinos_ids.each do |reino_id|
        reino = Reino.find(reino_id)
        if @categoria.enlistado_en?(reino)
          logger.info "Eliminando categorias del reino #{reino.id}"
          @categoria.reinos.delete(reino)
          flash[:notice] = 'Reino eliminado'
        end
      end
    end
    redirect_to :action => :reinos
  end


end
