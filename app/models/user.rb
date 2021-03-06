class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  has_many :credentials 
  has_many :photos

  has_many :stores

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :user_products
  has_many :products, :through => :user_products

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end
 mount_uploader :attachment, AttachmentUploader
 mount_uploader :banner, BannerUploader

  def self.search(query)
  where("first_name like ?", "%#{query}%")
  end
end
