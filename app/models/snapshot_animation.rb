require 'open-uri'

class SnapshotAnimation < ActiveRecord::Base
  attr_accessible :name

  mount_uploader :animation, SnapshotAnimationUploader

  belongs_to :event
  has_and_belongs_to_many :snapshots

  validates :name, presence: true

  def generate_animation
    return if snapshots.empty?

    imagelist = Magick::ImageList.new
    snapshots.each do |snapshot|
      imagelist.from_blob(open(snapshot.snapshot_url).read)
    end

    tmpfile = Tempfile.new('animation', Rails.root.join('tmp'))
    imagelist.write(tmpfile)
    animation = tmpfile

    save!
  end
end