class CreateJobcardLists < ActiveRecord::Migration
  def change
    create_table :jobcard_lists do |t|
      t.string :title
      t.text :Description

      t.timestamps null: false
    end
  end
end
