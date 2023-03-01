# Node with data and next node
class Node
  attr_accessor :data, :next

  def initialize(data, nxt)
    @data = data
    @next = nxt
  end
end

# Singly Linked List Implementation
class SinglyLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add(new_node)
    if @head.nil?
      @head = new_node
      return
    end
    new_node.next = @head
    @head = new_node
  end

  def append(new_node)
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
node4 = Node.new(20, nil)
node5 = Node.new(25, nil)
singly_linked_list.append(node1)
singly_linked_list.append(node2)
singly_linked_list.append(node3)
singly_linked_list.add(node4)
singly_linked_list.add(node5)
singly_linked_list.print
