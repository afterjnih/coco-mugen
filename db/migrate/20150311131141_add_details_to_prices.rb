class AddDetailsToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :size, :string, null: false, default: 999
    add_column :prices, :purpose, :string, null: false, default: 999
  end
end
