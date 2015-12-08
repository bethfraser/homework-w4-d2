class RemoveYearFromQuotes < ActiveRecord::Migration
  def change
    remove_column :quotes, :year, :date
  end
end
