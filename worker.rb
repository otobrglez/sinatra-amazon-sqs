require_relative 'boot'

QUEUE.poll do |msg|
  object = JSON.load(msg.body) rescue {}
  puts "Got your email #{object['email']} at #{object['at']}."
end
