
files = Hash.new {|h, k| h[k] = []}
File.readlines('evil2.gfx').join.each_byte.each_slice(5) do |slice|
  slice.each_with_index do |byte, index|
    files["file#{index}.gfx"] << byte
  end
end

files.each do |filename, value|
  File.open(filename, 'w+') { |f| f.write(value.pack('c*')) }
end

