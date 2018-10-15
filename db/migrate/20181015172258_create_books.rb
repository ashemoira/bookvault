class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :category
      t.integer :page
      t.integer :format

      t.timestamps
    end
  end
end
