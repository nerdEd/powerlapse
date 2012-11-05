class AddEventReferenceColumnToSnapshot < ActiveRecord::Migration
  def change
    add_column :snapshots, :event_id, :integer
  end
end
