Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :twitter, ENV['VVJTUONirmCDwkDePgpgLoK60'], ENV['r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY'],
	  {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'true',
        :lang => 'pt'
      }
    }
end


# http://127.0.01:3000/auth/twitter/callback/

#  Consumer Key (API Key) VVJTUONirmCDwkDePgpgLoK60
# Consumer Secret (API Secret) r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY 
	
# "TWITTER_KEY" = 'VVJTUONirmCDwkDePgpgLoK60'
# 'TWITTER_SECRET' = 'r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY'
