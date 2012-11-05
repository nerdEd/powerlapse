class CreateSnapshotAnimationsSnapshotsTable < ActiveRecord::Migration
  def up
    create_table :snapshot_animations_snapshots do |t|
      t.references :snapshot_animation
      t.references :snapshot
    end
  end

  def down
    drop_table :snapshot_animations_snapshots
  end
end
