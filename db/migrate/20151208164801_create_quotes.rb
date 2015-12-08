class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote
      t.string :source
      t.string :character
      t.string :actor
      t.date :year
      t.text :photo
      t.integer :rating

      t.timestamps null: false
    end
  end
end
