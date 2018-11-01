# frozen_string_literal: true

class CreateBookAllocations < ActiveRecord::Migration[5.2]
  def change
    create_table :book_allocations do |t|
      t.integer :book_id
      t.integer :bookshelf_id

      t.timestamps
    end
  end
end
