	
tkey = 'VVJTUONirmCDwkDePgpgLoK60'
tsec = 'r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY'
gkey = '92961498578-h7uoof6r38o0gjh67fhv4hvupd5t9ifg.apps.googleusercontent.com'
gsec = '_0g7y4uKCIpSPNYs6H5amUog'
Rails.application.config.middleware.use OmniAuth::Builder do 
 provider :twitter, 'VVJTUONirmCDwkDePgpgLoK60', 'r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY'


 provider :google_oauth2, client_id:'92961498578-h7uoof6r38o0gjh67fhv4hvupd5t9ifg.apps.googleusercontent.com' , client_secret:'_0g7y4uKCIpSPNYs6H5amUog',
           scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online', name: 'google',
           skip_jwt: true


  OmniAuth.config.on_failure = Proc.new do |env|
    SessionsController.action(:auth_failure).call(env)
    # error_type = env['omniauth.error.type']
    # new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{error_type}"
    # [301, {'Location' => new_path, 'Content-Type' => 'text/html'}, []]
  end
end


# http://127.0.01:3000/auth/twitter/callback/

#  Consumer Key (API Key) VVJTUONirmCDwkDePgpgLoK60
# Consumer Secret (API Secret) r2sd6DDRsMmK3RXsAuEEqF7CGx7Yqk05wpsS7WBELXFzJ4kyaY 
