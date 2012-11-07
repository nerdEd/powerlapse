namespace :maintenance do
  desc 'build an initial event and link all the existing snapshots to that event'
  task :build_first_event => :environment do
    if Event.count == 0
      e = Event.create!(:name => 'Sandy')
      Snapshot.update_all(:event_id => e.id)
    end
  end
end
