class Snapshot < ActiveRecord::Base
  attr_accessible :capture_time, :remote_snap

  mount_uploader :snapshot, SnapshotUploader
end
