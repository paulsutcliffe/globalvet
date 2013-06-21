require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :admin

12.times do
  FactoryGirl.create :marca
end

6.times do
  FactoryGirl.create :noticia
end

3.times do
  FactoryGirl.create :producto
end

3.times do
  FactoryGirl.create :diapositiva
end

16.times do
  FactoryGirl.create :contacto
end
