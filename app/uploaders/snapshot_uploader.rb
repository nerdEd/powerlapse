class SnapshotUploader < CarrierWave::Uploader::Base
  storage :fog
end
