require 'faker'

FactoryGirl.define do
  factory :categoria do
    nombre { Faker::Lorem.words }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
  end
end
