#!/usr/bin/ruby
require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  ruby '2.6.3'
  gem "espeak-ruby", require: "espeak"
end

# Speaks "YO!"
speech = ESpeak::Speech.new("YO! Hey there. how are you?")
speech.speak # invokes espeak
