require 'open-uri'
base = 'http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing='
arg = '8022'
400.times do |i|
  open(base + arg.to_s) do |f|
    line = f.readlines.join
    puts "#{arg} => #{line}"
    m = /\d+$/.match(line)
    break unless m
    arg = m.to_s
  end
end

