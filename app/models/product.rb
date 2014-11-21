class Product < ActiveRecord::Base

  has_many :photos

  has_many :store_products
  has_many :stores, :through => :store_products
  has_many :user_products
  has_many :users, :through => :user_products
end
