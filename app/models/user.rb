class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:line]

 has_many :social_profiles, dependent: :destroy
 def social_profile(provider)
   social_profiles.select{ |sp| sp.provider == provider.to_s }.first
 end
 def set_values(omniauth)
  return if provider.to_s != omniauth['provider'].to_s || uid != omniauth['uid']
  credentials = omniauth['credentials']
  info = omniauth['info']

  access_token = credentials['refresh_token']
  access_secret = credentials['secret']
  credentials = credentials.to_json
  name = info['name']
  # self.set_values_by_raw_info(omniauth['extra']['raw_info'])
end

  def set_values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    self.save!
  end
=======
         :recoverable, :rememberable, :validatable
  has_many :schedules
  has_many :user_groups
  has_many :groups, through: :user_groups
>>>>>>> 92ad0ae5ec716593eb2da73472f12fe435663516
end
