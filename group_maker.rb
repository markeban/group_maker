puts "Enter Names. I will create groups of 2 (and possibly a third). When finished, type 'done'"

entered_name = ""
names = []

while
  entered_name = gets.chomp
  break if entered_name.downcase == "done"
  names << entered_name
end

names.shuffle!

until names.length == 0    
  if names.length == 3
    group = names.pop(3)
  else
    group = names.pop(2)
  end
  print "Group: "
  group.each do |member|
    print "#{member} "
  end
  print "\n"
end





