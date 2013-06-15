require 'faker'

FactoryGirl.define do
  factory :admin do
    email "paul@kosmyka.com"
    password "chimpance99"
    password_confirmation "chimpance99"
  end
end
