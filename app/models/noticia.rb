class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :imagen, :titulo
end
