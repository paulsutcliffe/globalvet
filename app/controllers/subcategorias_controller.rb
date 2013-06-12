class SubcategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :categoria
end
