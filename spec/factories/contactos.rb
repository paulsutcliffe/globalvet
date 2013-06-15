# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contacto do
    nombre { Faker::Name.name }
    email { Faker::Internet.email }
    telefono { Faker::PhoneNumber.phone_number }
    mensaje { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
  end
end
