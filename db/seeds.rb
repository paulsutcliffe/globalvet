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

6.times do
  FactoryGirl.create :producto
end

1.times do
  FactoryGirl.create :reino
end

1.times do
  FactoryGirl.create :categoria
end

1.times do
  FactoryGirl.create :naturaleza
end

1.times do
  FactoryGirl.create :subcategoria
end

1.times do
  FactoryGirl.create :tipo
end

1.times do
  FactoryGirl.create :subtipo
end

16.times do
  FactoryGirl.create :contacto
end

3.times do
  FactoryGirl.create :diapositiva
end
