# frozen_string_literal: true

FactoryBot.define do
  factory :book_allocation do
    book_id { 1 }
    bookshelf_id { 1 }
  end
end
