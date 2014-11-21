class Photo < ActiveRecord::Base

  belongs_to :user
  belongs_to :store
  belongs_to :product

  #mount_uploader :image, AttachmentUploader
end
