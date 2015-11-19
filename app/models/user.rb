class User
  include Mongoid::Attributes::Dynamic
  include Mongoid::Document

  field :uid, type: String
  field :name, type: String
  field :provider, type: String
  field :image, type: String
  field :email, type: String

  def self.omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.email = auth.info.email
      user.save!
    end
  end
end
