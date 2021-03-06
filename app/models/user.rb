class User < ActiveRecord::Base
    def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      if(auth.uid == "1683991158326774" || auth.uid == "533659643648681")
	    user.role = "admin"
      else
        user.role = "user"
      end
      user.save!
     end
    end

  def admin? 
   self.role == 'admin' 
  end
end
