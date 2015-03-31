class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
    @prev_node = nil
  end

  def to_s
    @value || nil
  end
end

class DoubleLinkedList
  attr_accessor :head

  def initialize(first_node)
    @head = Node.new(first_node)
  end

  def set_next
    
  end

  def set_prev
    
  end

  def has_next?
    
  end

  def has_prev?
    
  end

  def prepend(element)
    node = Node.new(element)
    node.next_node = @head
    @head.prev_node = node

    # if empty, or if node - if there's only one, the original head becomes the tail
  end

  def append
    
  end

  def insert_after
    
  end

  def find
    
  end

  def length
    
  end


end

class EmptyListError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

class NodeNotFoundError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

=begin
begin
  raise EmptyListError.new(object), "You cannot insert_after into an empty list"
rescue EmptyListError => e
  puts e.message # => "a message"
  # puts e.object # => "an object"
end

begin
  raise NodeNotFoundError.new(object),'Node not found'
rescue NodeNotFoundError => e
  puts e.message
  # puts e.object
end

=end


