#This is the calendar program
require_relative "lib/zeller.rb"
require_relative "lib/print_month.rb"

month = ARGV[0]
year  = ARGV[1]
start_day = Zeller.find_start_day(month, year)

#Reference: start days are as follows:
#0 - Sat
#1 - Sun
#2 - Mon
#3 - Tues
#4 - Wed
#5 - Thurs
#6 - Fri

puts start_day

