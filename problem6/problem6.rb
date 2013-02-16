require 'zip/zip'

filename = '90052'
comments = Array.new

Zip::ZipFile.open('channel.zip') do |f|
  while true do
    line = f.read(filename + '.txt')
    comment = f.get_entry(filename + '.txt').comment
    puts "#{filename}.txt => #{line} => #{comment}"
    comments << comment
    m = /\d+$/.match(line)
    break unless m
    filename = m.to_s
  end
end

puts comments.join

