class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :imagen, :titulo
  extend FriendlyId
  friendly_id :titulo, use: :slugged
end
