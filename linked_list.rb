require_relative 'node'

class LinkedList
  # attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    # new_node = Node.new(value)
    # if @head.nil?
    #   @head = new_node
    # else
    #   new_node.next = @head
    #   @head = new_node
    # end
    #
    # if @head.nil? @head = Node.new(value, nil)
    # else
    #   temp = @head
    #   @head = Node.new(value, temp)
    # end

    @head = Node.new(value, @head)

  end

  def get_first
    # if !@head
    #   return nil
    # else
    #   return @head.data
    # end

    @head ? @head.data : nil
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
    if @head.nil?
      return nil
    else
      curr = @head
      while curr.next != nil
        curr = curr.next()
      end
      return curr.data
    end
  end

  def get_at_index(index)

  end

end
