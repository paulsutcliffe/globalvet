require 'faker'

FactoryGirl.define do
  factory :tipo do
    nombre { Faker::Lorem.word }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    subcategoria
  end
end
