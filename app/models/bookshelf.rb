class Bookshelf < ApplicationRecord
  has_many :book_allocations
  has_many :books, through: :book_allocations
end
