class Credential < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth, user=nil)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |credential|
      credential.token = auth.credentials.token
      credential.expired_at = auth.credentials.expires_at
      credential.expires = auth.credentials.expires
      credential.user_id = user.id
    end
  end
end
