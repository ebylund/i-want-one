class Store < ActiveRecord::Base

  belongs_to :user

  has_many :photos

  has_many :store_products
  has_many :products, :through => :store_products
end
