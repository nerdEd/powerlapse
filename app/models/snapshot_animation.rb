class SnapshotAnimation < ActiveRecord::Base
  attr_accessible :name

  mount_uploader :snapshot, SnapshotAnimationUploader

  belongs_to :event
  has_and_belongs_to_many :snapshots
end
