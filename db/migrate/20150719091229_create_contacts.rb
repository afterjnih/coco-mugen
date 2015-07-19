class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :mail
      t.text :content

      t.timestamps
    end
  end
end
