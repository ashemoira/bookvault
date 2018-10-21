class Book < ApplicationRecord
  extend Enumerize

  has_many :book_allocations
  has_many :bookshelves, through: :book_allocations

  validates :title, presence: true, length: { maximum: 200 }
  validates :author, presence: true, length: { maximum: 200 }

  enumerize :category, in: {
      novel: '1',
      comic: '2',
      computer_technology: '3',
      business_money: '4'
  }
end
