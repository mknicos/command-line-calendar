#This is the calendar program
require_relative "lib/zeller.rb"

month = ARGV[0]
year  = ARGV[1]

x = Zeller.find_start_day(month, year)

puts x

