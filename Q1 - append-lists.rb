=begin

  Append Linked Lists
  1) Using recursion, append two linked lists
  2) Print the values of each node

  Example:
  list1 = ListNode.new(1, ListNode.new(2, nil))
  list2 = ListNode.new(3, ListNode.new(4, nil))
  => appendedlist = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, nil))))
  => 1, 2, 3, 4, nil

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

def append_list (list1, list2)
  if list1.nextnode.nil?
    list1.nextnode = list2 
    return
  end
  append_list(list1.nextnode, list2)
end

def print_list (list)
  return if list.nil?		
  print "#{list.value}, "
  print_list(list.nextnode)
end

list1 = ListNode.new(1, ListNode.new(2, nil))
list2 = ListNode.new(3, ListNode.new(4, nil))

append_list(list1, list2)
p print_list(list1)
 