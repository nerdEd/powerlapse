class SnapshotAnimationUploader < CarrierWave::Uploaded::Base
  storage :fog
end
