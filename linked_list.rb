require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)

  end

  def get_first

  end

  def length
    return 0
  end

  def add_last(value)
    new_node = Node.new(value)
    if @head.nil?
      #List empty
      @head = new_node
    else
      #List not empty
      curr = @head
      while curr.next != nil
        curr = curr.next()
        #curr points to last node
      end
      curr.next = new_node
    end
  end

  def get_last

  end

  def get_at_index(index)

  end

end
