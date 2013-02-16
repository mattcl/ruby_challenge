msg = "g fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj. map"
translated = msg.each_char.collect do |c|
  if /[a-z]/.match(c)
    (c.ord + 2 - 'a'.ord) % 26 + 'a'.ord
  else
    c
  end
end

puts translated.map {|x| x.chr }.join
