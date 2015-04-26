class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :length,  null: false
      t.float :width,   null:false
      t.integer :price, null:false

      t.timestamps
    end
  end
end
