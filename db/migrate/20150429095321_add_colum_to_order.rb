class AddColumToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :cellphone_number, :string
  end
end
