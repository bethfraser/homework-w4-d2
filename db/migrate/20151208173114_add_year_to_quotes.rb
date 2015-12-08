class AddYearToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :year, :string
  end
end
