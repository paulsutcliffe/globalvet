class Producto < ActiveRecord::Base
  attr_accessible :archivo_pdf, :descripcion, :nombre, :imagen, :slug
  extend FriendlyId
  friendly_id :nombre, use: :slugged

  belongs_to :tipo

  mount_uploader :imagen, ImagenUploader
  mount_uploader :archivo_pdf, PdfUploader

  after_save :load_into_soulmate

  def load_into_soulmate
    loader = Soulmate::Loader.new("producto")
    loader.add("term" => nombre, "id" => id)
  end

  def self.search(term)
    matches = Soulmate::Matcher.new('producto').matches_for_term(term)
    matches.collect {|match| {"id" => match["id"], "label" => match["term"], "value" => match["term"] } }
  end
end
