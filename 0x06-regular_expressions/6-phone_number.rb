#!/usr/bin/env ruby
#Ruby script for regular expression that matches digits

puts ARGV[0].scan(/^[0-9]{10}$/).join
