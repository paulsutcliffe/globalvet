require 'faker'

FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence(word_count = 4, supplemental = false) }
    contenido { Faker::Lorem.paragraphs(paragraph_count = 3, supplemental = false) }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'imagen_categoria.jpg')) }
  end
end
