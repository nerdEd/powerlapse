class SnapshotAnimationUploader < CarrierWave::Uploader::Base
  storage :fog
end