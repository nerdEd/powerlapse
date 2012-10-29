class Snapshot < ActiveRecord::Base
  attr_accessible :capture_time

  mount_uploader :snapshot, SnapshotUploader

  default_scope :order => 'capture_time DESC'
end
