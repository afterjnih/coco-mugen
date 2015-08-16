class IntegratePhoneNumberCulmunToOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :cellphone_number, :string
  end
end
