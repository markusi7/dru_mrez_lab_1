class User
  include Mongoid::Attributes::Dynamic
  include Mongoid::Document

  def self.omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      byebug
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.save!
    end
  end
end
