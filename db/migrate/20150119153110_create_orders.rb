class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :last_name          , null: false
      t.string :first_name         , null: false
      t.string :last_name_kana     , null: false
      t.string :first_name_kana    , null: false
      t.string :mail               , null: false
      t.string :phone_number
      t.text :purpose              , null: false
      t.text :other_purpose
      t.date :preffered_date       , null: false
      t.float :length              , null: false
      t.float :width               , null: false
      t.text :message              , null: false
      t.timestamps
    end
  end
end
