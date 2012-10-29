CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['amazon_key'],       # required
    :aws_secret_access_key  => ENV['amazon_secret']       # required
  }
  config.fog_directory  = ENV['amazon_bucket']                     # required
  config.fog_public     = false                                   # optional, defaults to true
end
