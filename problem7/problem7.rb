require 'chunky_png'
img = ChunkyPNG::Image.from_file('oxygen.png')
start = img.height / 2 * img.width
finish = start + img.width
increment = 7
puts "#{img.width} x #{img.height} => start: #{start}, end: #{finish}, total: #{img.pixels.length}"

colors = Array.new
((finish - start)/increment).times { |i| colors << ChunkyPNG::Color.to_hex(img.pixels[start + i * increment]) }
puts colors.collect { |color| "0x#{color[1,2]}".hex }.pack('c*')

puts [105, 110, 116, 101, 103, 114, 105, 116, 121].pack('c*')

