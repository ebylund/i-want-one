class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos

  has_many :stores

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :user_products
  has_many :products, :through => :user_products

 mount_uploader :attachment, AttachmentUploader
 mount_uploader :banner, BannerUploader

  def self.search(query)
  where("first_name like ?", "%#{query}%")

end
end
