class Snapshot < ActiveRecord::Base
  attr_accessible :capture_time
  default_scope :order => 'capture_time ASC'

  mount_uploader :snapshot, SnapshotUploader

  belongs_to :event
  has_and_belongs_to_many :snapshot_animations

  def title
    est_time = capture_time.in_time_zone("Eastern Time (US & Canada)")
    "Outages as of #{est_time.strftime('%m/%e %l:%M %p')}"
  end
end