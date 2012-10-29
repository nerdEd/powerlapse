namespace :powerlapse do
  desc 'create a snapshot of the current power outages'
  task :scrape_snapshot => :environment do
    time = Time.now
    s = Snapshot.new(:capture_time => time, :name => time.now.to_s)
    s.remote_snapshot_url = 'http://bgeoutage.bge.com/ServiceArea.jpg'
    s.save
  end
end
