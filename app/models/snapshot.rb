class Snapshot < ActiveRecord::Base
  attr_accessible :capture_time

  mount_uploader :snapshot, SnapshotUploader

  default_scope :order => 'capture_time ASC'

  def title
    est_time = capture_time.in_time_zone("Eastern Time (US & Canada)")
    "Outages as of #{est_time.strftime('%m/%e %l:%M %p')}"
  end
end
