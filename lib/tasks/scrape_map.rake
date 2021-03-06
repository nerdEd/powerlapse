require 'open-uri'

namespace :powerlapse do
  desc 'create a snapshot of the current power outages'
  task :scrape_snapshot => :environment do
    time = Time.now
    s = Snapshot.new(:capture_time => time, :name => time.to_s)
    s.snapshot = open('http://bgeoutage.bge.com/ServiceArea.jpg')
    s.save
  end
end