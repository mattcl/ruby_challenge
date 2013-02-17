
def next_sequence(seed)
  seq = ''
  count = 0
  seed = seed.each_char.to_a
  while cur = seed.shift
    count += 1
    next_elem = seed.shift
    if next_elem != cur
      seq += "#{count}#{cur}"
      count = 0
      cur = next_elem
    end
    redo unless next_elem.nil?
  end
  return seq
end

sequence = '1'
30.times do
  sequence = next_sequence(sequence)
end

puts sequence.length

