class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :token
      t.integer :expired_at
      t.boolean :expires

      t.timestamps null: false
    end
  end
end
