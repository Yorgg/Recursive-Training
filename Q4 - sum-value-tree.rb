=begin

Sum the values of tree
1) Using Recursion return the sum of all of the values in the tree.
   Each tree should have 1 value, and a left node and right node (which is either nil, or another tree).

   Example:
   tree = Tree.new(1, nil, Tree.new(1, nil, nil))
   tree_value_sum(tree) 
   => 2

=end



class Tree
  attr_accessor :value, :left, :right
  def initialize(value, left, right)
	@value = value
	@left = left
    @right = right
  end
end
 
def tree_value_sum(tree) 
tree == nil ? 0 : tree.value + tree_value_sum(tree.left) + tree_value_sum(tree.right)
end

tree = Tree.new(1, nil, Tree.new(1, nil, nil))
p tree_value_sum(tree) 
 
