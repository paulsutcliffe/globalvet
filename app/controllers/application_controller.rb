class ApplicationController < ActionController::Base
  protect_from_forgery


  def load_metadata
    @metadata = Metadatum.first
    @first_product = Product.select("id, slug").first
  end

  def bodyid
    @bodyid = params[:controller].parameterize
  end

  def bodyclass
    @action = params[:action].parameterize

    if params[:controller] == 'products' && params[:action] == 'index'
      @front = 'front'
    else
      @front = 'not-front'
    end

 #   if current_admin
 #     @admin = 'logged-in'
 #   else
 #     @admin = 'not-logged-in'
 #   end

    @bodyclass = @action + ' ' + @front #+ ' ' + @admin
  end

  helper_method :bodyid
  helper_method :bodyclass
end

