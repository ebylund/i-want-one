class AddExtrasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :full_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :integer
    add_column :users, :attachment, :string
    add_column :users, :location, :string
    add_column :users, :birthday, :date
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
    add_column :users, :username, :string
  end
end
