class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_products_tree

  def load_products_tree
    @reinos_tree = Reino.select("id, nombre, slug").all
    @subcategorias_tree = Subcategoria.select("id, nombre, slug, categoria_id, reino_id").all
    @tipos_tree = Tipo.select("id, nombre, slug, subcategoria_id").all
    @subtipos_tree = Subtipo.select("id, nombre, slug, tipo_id").all
  end

  def bodyid
    @bodyid = params[:controller].parameterize
  end

  def bodyclass
    @action = params[:action].parameterize

    if params[:controller] == 'home' && params[:action] == 'index'
      @front = 'front'
    else
      @front = 'not-front'
    end

    if params[:controller] == 'reinos' || params[:controller] == 'categorias' || params[:controller] == 'subcategorias' || params[:controller]  == 'tipos' || params[:controller] == 'productos' || params[:controller] == 'subtipos'
      @product = 'product-page'
    else
      @product = ''
    end

    if current_admin
      @admin = 'logged-in'
    else
      @admin = 'not-logged-in'
    end

    @bodyclass = @action + ' ' + @front + ' ' + @product + ' ' + @admin
  end

  helper_method :bodyid
  helper_method :bodyclass
end

