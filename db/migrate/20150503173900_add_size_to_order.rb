class AddSizeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :size, :integer
  end
end
