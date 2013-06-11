# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :producto do
    nombre "MyString"
    descripcion "MyText"
    archivo_pdf "MyString"
  end
end
