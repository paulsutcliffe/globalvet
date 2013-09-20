# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subtipo do
    nombre "Antiparasitario"
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
    tipo_id 1
  end
end
