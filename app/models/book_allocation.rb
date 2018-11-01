# frozen_string_literal: true

class BookAllocation < ApplicationRecord
  belongs_to :book
  belongs_to :bookshelf
end
