#!/usr/bin/env ruby

procs = `ps aux`
running = false
procs.each_line do |proc|
  running = true if proc.include?('apache2')
end
if running
  puts 'OK - Apache daemon is running'
  exit 0
else
  puts 'ERROR - Apache daemon is NOT running'
  exit 2
end
