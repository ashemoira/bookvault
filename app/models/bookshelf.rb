# frozen_string_literal: true

class Bookshelf < ApplicationRecord
  has_many :book_allocations,
           dependent: false
  has_many :books, through: :book_allocations
end
