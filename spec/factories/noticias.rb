# coding: utf-8
require 'faker'

FactoryGirl.define do
  factory :noticia do
    titulo "Estuvimos en AMEVEA 2013"
    contenido "VII Seminario Internacional AMEVEA – V Encuentro Científico – V Expo Amevea – Perú 2013, Del 26 al 28 de Junio del 2013, conferencistas internacionales. La sede del congreso será en el HOTEL SHERATON."
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    link "www.maeventosycongresos.com/portfolio/vii-seminario-internacional-amevea-peru-2013"
  end
end
