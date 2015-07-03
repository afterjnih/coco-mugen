class AddRemarksToOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :message, :text
    add_column :orders, :remarks, :text
  end
end
