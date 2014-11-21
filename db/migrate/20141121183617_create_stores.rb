class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :url
      t.string :image

      t.timestamps null: false
    end
  end
end
