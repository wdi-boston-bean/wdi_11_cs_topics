require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

  def to_s
    "#{@value}" || nil
  end
end

class SingleLinkedList
  attr_accessor :head

  def initialize(first_element)
    @head = Node.new(first_element)
  end

  def last
    node = @head
    while node.next_node
      node = node.next_node
    end
    node
  end
  
  def append(element)
    node = Node.new(element)
    last.next_node = node
  end

  def prepend(element)
    node = Node.new(element)
    node.next_node = @head
    @head = node
  end

  def shift
    old_head = @head
    @head = @head.next_node
    old_head 
  end

  def length
    length = @head ? 1 : 0
    node = @head
    while node.next_node
      length += 1
      node = node.next_node
    end
    length
  end

  def find(value)
    node = @head
    while node
      if node.value == value
        return node
      else
        node = node.next_node
      end
    end
    return nil
  end

  def reverse
    list = SingleLinkedList.new(@head.value)
    node = @head
    while node.next_node
      node = node.next_node
      list.prepend(node.value)
    end
    list
  end

  def reverse!
    last = nil
    node = @head
    while node.next_node
      prior = node.next_node
      node.next_node = last
      last = node
      node = prior
    end
    node.next_node = last
    @head = node
    self
  end

  def insert_after(node, new_node)
    new_node.next_node = node.next_node
    node.next_node = new_node
    self   
  end
end

=begin
s = SinglyLinkedList.new("a")
binding.pry
s.append("b")
s.append("c")
s.append("d")
s.append("e")
puts "STARTING LIST"
puts s.to_s


puts "prepend 0"
s.prepend("0")
puts s.to_s

puts "append f"
s.append("f")
puts s.to_s

puts "remove"
puts s.remove

puts "last"
puts s.last

puts "length"
puts s.length

puts "Find c"
puts s.find("c")

puts "reverse 1"
puts s.reverse.to_s

puts "destructive reverse"
s.reverse!
s.to_s
=end
