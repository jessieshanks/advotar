# OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, Google.client_id, Google.client_secret, {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
# end

OmniAuth.config.full_host = Rails.env.production? ? 'https://advotar.herokuapp.com' : 'http://localhost:3000'
