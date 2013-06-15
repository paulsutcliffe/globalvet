# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :producto do
    nombre { Faker::Lorem.sentence(word_count = 4, supplemental = false) }
    descripcion { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    archivo_pdf { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'Wormwood.pdf')) }
  end
end
