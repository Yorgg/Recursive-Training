=begin

  Delete value from Linked List
  1) Using recursion, find and delete a value from a linked list.
  2) Print the values of each node of your list.

  Example:
  list = ListNode.new(1, ListNode.new(4, nil))
  value = 1
  => ListNode.new(4, nil)
  => 4, nil

  Learn about linked lists: http://en.wikipedia.org/wiki/Linked_list
  
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



class ListNode
  attr_accessor :value, :nextnode
  def initialize (value, nextnode)
	  @value = value
	  @nextnode = nextnode
  end
end
 
def delete_list(list, value) 
  return list = list.nextnode if list.value == value
  list.nextnode = delete_list(list.nextnode, value ) 
  list
end

def print_list (list)
  return if list.nil?
  print "#{list.value}, "
  print_list(list.nextnode)
end

list = ListNode.new(0, ListNode.new(2, ListNode.new(6, ListNode.new(1, nil))))

newlist = delete_list(list, 6) 
p print_list(newlist)
 
 