class CreateSnapshotAnimations < ActiveRecord::Migration
  def change
    create_table :snapshot_animations do |t|
      t.string        :name, :null => false
      t.references    :event
      t.datetime      :start_time
      t.datetime      :end_time
      t.string        :animation
      t.timestamps
    end
  end
end
