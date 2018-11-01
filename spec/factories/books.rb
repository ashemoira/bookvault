# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :book do
    title { Faker::Name.name }
    author { Faker::Name.name }
    page { rand(1000) }
  end
end
