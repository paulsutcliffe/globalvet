class MarcasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]

  def index
    @marcas = Marca.all
  end



end
