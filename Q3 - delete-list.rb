
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

list = delete_list(list, 1) 
p print_list(list)

 
 