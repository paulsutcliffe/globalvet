require 'faker'

FactoryGirl.define do
  factory :subcategoria do
    nombre "Aditivos y suplementos nutricionales"
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    categoria_id 1
    reino_id 1
  end
end
