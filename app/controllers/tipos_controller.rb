class TiposController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  belongs_to :subcategoria
end
