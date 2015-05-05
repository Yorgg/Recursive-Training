
=begin
  Check if tree is same! 
  1) Using recursion, check if two trees are the same
  2) Return true / false

  Each node in the Tree should initialize with:
  @value
  @left_node
  @right_node

  Example:

  tree = Tree.new(1, nil, Tree.new(3, nil, nil))
  tree2 = Tree.new(1, nil, Tree.new(2, nil, nil))

  puts tree_same(tree, tree2)
  => false
   
  (Solution below in Ruby)
=end


#
#
#
#
#
#
#
#
#
#
#
#
#  
#
#
#
#
#
#
#
#
#
#
#
#
#

 

class Tree
  attr_accessor :value, :left, :right
  def initialize(value, left, right)
	  @value = value
	  @left = left
    @right = right
  end
end
 
def tree_same(tree, tree2)
  if tree.nil?
    if tree2.nil?
      return true
    else
      return false
    end
  elsif tree2.nil?
    return false
  else
    tree.value == tree2.value && tree_same(tree.left, tree2.left) && tree_same(tree.right, tree2.right)
  end
end

tree = Tree.new(1, nil, Tree.new(3, nil, nil))
tree2 = Tree.new(1, nil, Tree.new(2, nil, nil))

puts tree_same(tree, tree2)
