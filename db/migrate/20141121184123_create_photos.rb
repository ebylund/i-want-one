class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :product_id
      t.string :image
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
