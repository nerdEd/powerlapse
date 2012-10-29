namespace :powerlapse do
  desc 'create a snapshot of the current power outages'
  task :scrape_snapshot => :environment do
    time = Time.now
    s = Snapshot.new(:capture_time => time, :name => time.to_s)
    s.remote_snapshot_url = "http://bgeoutage.bge.com/ServiceArea.jpg?p=#{time.to_s}"
    s.save
  end
end
