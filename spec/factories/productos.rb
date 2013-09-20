# coding: utf-8
require 'faker'

FactoryGirl.define do
  factory :producto do
    nombre "Stress Forte"
    descripcion "Asociación completa y equilibrada e aminoácidos y vitaminas."
    archivo_pdf { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'Wormwood.pdf')) }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    tipo_id 1
    subtipo_id 1
    subcategoria_id 1
    reino_id 1
  end
end
