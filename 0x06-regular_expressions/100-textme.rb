#!/usr/bin/env ruby
#This script implements a regular expression for searching pattern on an app

puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
