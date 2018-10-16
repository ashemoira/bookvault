require 'faker'

FactoryBot.define do
  factory :book do
    title Faker::Name.name
    author Faker::Name.name
  end
end
