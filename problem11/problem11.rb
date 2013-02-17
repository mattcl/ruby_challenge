require 'RMagick'

img = Magick::Image.read('cave.jpg').first
width = img.columns
height = img.rows
puts "original: #{width} x #{height}"

even = []
pixels = img.get_pixels(0, 0, width, height).to_a
pixels.each_with_index do |pixel, i|
  components = [pixel.red, pixel.green, pixel.blue]
  if i.even?
    even << components
  end
end

Magick::Image.constitute(width, height / 2, 'RGB', even.flatten).write('even.jpg')

