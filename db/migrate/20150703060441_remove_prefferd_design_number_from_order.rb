class RemovePrefferdDesignNumberFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :preffered_design_number, :string
  end
end
