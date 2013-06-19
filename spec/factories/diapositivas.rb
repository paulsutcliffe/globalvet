require 'faker'

FactoryGirl.define do
  factory :diapositiva do
    slide { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'slide.jpg')) }
    titulo { Faker::Lorem.words }
    link { Faker::Internet.url }
  end
end
