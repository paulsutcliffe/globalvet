require 'faker'

FactoryGirl.define do
  factory :reino do
    nombre "Bovinos"
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
  end
end
