require_relative 'bst'

bst = BST.new
bst.insert(23);
bst.insert(45);
bst.insert(16);
bst.insert(37);
bst.insert(3);
bst.insert(99);
bst.insert(22);
bst.insert(38);
bst.insert(2);

puts "\n\nIn order"
bst.in_order(bst.root)
puts "\n\nPre order"
bst.pre_order(bst.root)
puts "\n\nPost order"
bst.post_order(bst.root)
puts "\n\nMinimum value"
puts bst.get_min
puts "\n\nMaximum value"
puts bst.get_max
puts "\n\nFind node with data 3"
puts bst.find(3).data
