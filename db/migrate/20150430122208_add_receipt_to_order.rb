class AddReceiptToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :receipt_enabled, :boolean
    add_column :orders, :receipt_address, :string
    add_column :orders, :receipt_proviso, :string
  end
end
