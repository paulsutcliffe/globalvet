require 'faker'

FactoryGirl.define do
  factory :marca do
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'logo.jpg')) }
    link { Faker::Internet.url }
  end
end
