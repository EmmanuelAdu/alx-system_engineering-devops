#!/usr/bin/env ruby
#This ruby regular expression matches a repeated string

puts ARGV[0].scan(/hbt{2,5}n/).join
