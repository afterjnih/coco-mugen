class ChangeNullConstraintToOrder < ActiveRecord::Migration
  def up
    change_column :orders, :phone_number, :string, null: false
    change_column :orders, :length, :string, null: true
    change_column :orders, :width, :string, null: true
    change_column :orders, :residence, :string, null: false
    change_column :orders, :mailing_address, :string, null: false
    change_column :orders, :residence_zip_code, :string, null: false
    change_column :orders, :mailing_zip_code, :string, null: false
    change_column :orders, :receipt_enabled, :boolean, null: false
    change_column :orders, :size, :string, null: false
  end

  def down
    change_column :orders, :phone_number, :string, null: true
    change_column :orders, :length, :string, null: false
    change_column :orders, :width, :string, null: false
    change_column :orders, :residence, :string, null: true
    change_column :orders, :mailing_address, :string, null: true
    change_column :orders, :residence_zip_code, :string, null: true
    change_column :orders, :mailing_zip_code, :string, null: true
    change_column :orders, :receipt_enabled, :boolean, null: true
    change_column :orders, :size, :string, null: true
  end
end
