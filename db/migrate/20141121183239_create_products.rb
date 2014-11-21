class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.float :price
      t.float :discount
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
