# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contacto do
    nombre "MyString"
    email "MyString"
    telefono "MyString"
    mensaje "MyText"
  end
end
