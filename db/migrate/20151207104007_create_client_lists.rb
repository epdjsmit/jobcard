class CreateClientLists < ActiveRecord::Migration
  def change
    create_table :client_lists do |t|
      t.string :client_name
      t.string :surname
      t.string :adress
      t.string :cellnumber

      t.timestamps null: false
    end
  end
end
