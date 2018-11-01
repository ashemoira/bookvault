# frozen_string_literal: true

class CreateBookshelves < ActiveRecord::Migration[5.2]
  def change
    create_table :bookshelves do |t|
      t.string :title

      t.timestamps
    end
  end
end
