class RemoveLengthsFromPrices < ActiveRecord::Migration
  def change
    remove_column :prices, :length, :float
    remove_column :prices, :width, :float
  end
end
