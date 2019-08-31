#/usr/bin/env ruby
# Get days since born

# example days.ini file:
#[Birthday]
#Birthday=1982/09/02

require 'inifile'
require 'pp'
require 'date'

# read in ini file
file = IniFile.load('./days.ini')
data = file["Birthday"]
birthday = data["Birthday"]

birthDate = Date.parse(birthday)
now = DateTime.now

diff = now.mjd - birthDate.mjd
birthdiff = diff.to_s
finalnum = birthdiff[0..1] + "," + birthdiff[2..-1]
print "\nContragulations! You have been alive #{finalnum} days on the planet!\n\n"




