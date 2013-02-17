require 'RMagick'

lines = File.readlines('problem9.txt').collect { |line| line.split(',').collect(&:to_i) }

first = lines.shift.each_slice(2).to_a
second = lines.shift.each_slice(2).to_a

def draw_img(name, arr)
  width = arr.collect { |coord| coord[0] }.max
  height = arr.collect { |coord| coord[1] }.max
  data = arr.flatten
  canvas = Magick::ImageList.new
  canvas.new_image(width, height) { self.background_color = 'white' }
  path = Magick::Draw.new
  path.stroke('black')
  path.polyline(*data)
  path.draw(canvas)
  canvas.write(name)
end

draw_img('first.jpg', first)
draw_img('second.jpg', second)
