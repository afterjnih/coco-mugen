class AddZipCodeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :residence_zip_code, :string
    add_column :orders, :mailing_zip_code, :string
  end
end
