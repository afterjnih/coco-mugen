class AddColumnToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :preffered_design_number, :string
  end
end
