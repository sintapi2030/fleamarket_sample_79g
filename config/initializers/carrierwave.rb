require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
    ## 本番環境の時
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
    ## 開発環境の時
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'fleamarket79g'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/fleamarket79g'
  else
    config.storage = :file
  end
end
