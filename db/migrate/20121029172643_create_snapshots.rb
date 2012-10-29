class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.datetime  :capture_time
      t.string    :snapshot

      t.timestamps
    end
  end
end
