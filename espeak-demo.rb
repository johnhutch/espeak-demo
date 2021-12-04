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

ESpeak::Speech.new("I sounds kind of weird. Weird POPPING noises. Maybe if I Alter the values, I can make it better", 
                   voice: 'en-us',
                   pitch: 90, 
                   speed: 200
                  ).speak

speech = ESpeak::Speech.new("Hallo Welt", voice: "de")
# speech.save("hello-de.mp3") # saves the speach as an mp3 instead of speaking it
