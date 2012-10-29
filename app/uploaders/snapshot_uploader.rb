# encoding: utf-8

class SnapshotUploader < CarrierWave::Uploader::Base
  storage :fog
end
