CarrierWave.configure do |config|

  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["TOWNHOUSE_CLIENT_ID"],
    aws_secret_access_key: ENV["TOWNHOUSE_SECRET_ID"],
    region:                'us-east-2'
  }
  config.fog_directory  = 'townhouseig'
  config.fog_public     = false
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
