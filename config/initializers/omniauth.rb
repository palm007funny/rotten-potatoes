OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1625986167465090', '2498b4927bebae037b3dcbe26f99f5f9', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end