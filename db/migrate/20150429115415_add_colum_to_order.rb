class AddColumToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :cellphone_number, :string
    add_column :orders, :residence, :string
    add_column :orders, :mailing_address, :string
  end
end
