class Node
  attr_accessor :data, :next

  def initialize(data, nxt)
    @data = data
    @next = nxt
  end
end

class SinglyLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(new_node)
    if @head.nil?
      @head = new_node
      return
    end
    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    current_node.next = new_node
  end

  def print
    current_node = @head
    p current_node.data
    until current_node.next.nil?
      current_node = current_node.next
      p current_node.data
    end
  end
end

singly_linked_list = SinglyLinkedList.new
node1 = Node.new(5, nil)
node2 = Node.new(10, nil)
node3 = Node.new(15, nil)
singly_linked_list.push(node1)
singly_linked_list.push(node2)
singly_linked_list.push(node3)
singly_linked_list.print
