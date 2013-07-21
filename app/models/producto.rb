class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre, :imagen, :slug, :reino_id, :categoria_id, :subcategoria_id, :tipo_id

  extend FriendlyId
  friendly_id :nombre, use: :slugged

  belongs_to :tipo
  belongs_to :reino
  belongs_to :subcategoria

  mount_uploader :imagen, ImagenUploader
  mount_uploader :archivo_pdf, PdfUploader

  # after_save :load_into_soulmate
  # before_destroy :remove_from_soulmate

  # def self.search(term)
  #   matches = Soulmate::Matcher.new('producto').matches_for_term(term)
  #   matches.collect {|match| {"id" => match["id"], "label" => match["term"], "value" => match["term"] } }
  # end

  def self.busqueda(busqueda)
    search_condition = "%" + busqueda + "%"
    find(:all, :conditions => ['nombre LIKE ? OR descripcion LIKE ?', search_condition, search_condition])
  end

  # private

  # def load_into_soulmate
  #   loader = Soulmate::Loader.new("producto")
  #   loader.add("term" => nombre, "id" => id)
  # end

  # def remove_from_soulmate
  #   loader = Soulmate::Loader.new("producto")
  #   loader.remove("id" => self.id)
  # end

end
