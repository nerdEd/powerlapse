namespace :powerlapse do
  desc 'create a snapshot of the current power outages'
  task :scrape_snapshot => :environment do
    Snapshot.create(:remote_snapshot_url => 'http://bgeoutage.bge.com/ServiceArea.jpg')
  end
end
