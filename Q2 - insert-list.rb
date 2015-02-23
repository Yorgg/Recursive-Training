=begin

  Insert into Linked List
  1) Using recursion, insert a value into a sorted linked list.
     The new list must be sorted in ascending order after your insertion. 
  2) Print the values of each node of your new sorted list.

  Example:
  list = ListNode.new(1, ListNode.new(4, nil))
  value = 3
  => ListNode.new(1, ListNode.new(3, ListNode.new(4, nil)))
  => 1, 2, 3

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
 
def append_list (list, value)
  return ListNode.new(value, nil) if list.nil?
  return ListNode.new(value, list) if value < list.value  
  list.nextnode = append_list(list.nextnode, value)
  list
end

def print_list (list)
  return if list.nil?
  print "#{list.value}, " 
  print_list(list.nextnode)
end

list = ListNode.new(1, ListNode.new(2, ListNode.new(5, nil)))
value = 4

p append_list(list, value)
p print_list(list)

 
