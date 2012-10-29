namespace :powerlapse do
  desc 'create a snapshot of the current power outages'
  task :scrape_snapshot => :environment do
    s = Snapshot.new(:capture_time => Time.now)
    s.remote_snapshot_url = 'http://bgeoutage.bge.com/ServiceArea.jpg'
    s.save
  end
end
