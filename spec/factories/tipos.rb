require 'faker'

FactoryGirl.define do
  factory :tipo do
    nombre "Desinfectantes"
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    subcategoria_id 1
  end
end
