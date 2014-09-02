#!/usr/bin/env ruby

require_relative 'boot'
require 'sinatra'

get '/' do
  "Smoke it! <a href=/smoke>Now!</a>\n"
end

get '/smoke' do
  message = QUEUE.send_message({email: "my@email.com", at: DateTime.now}.to_json.to_s)
  "Message was sent to Amazon SQS with id #{message.id}.\n"
end
