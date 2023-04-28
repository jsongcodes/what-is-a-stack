class Stack
  attr_reader :limit

  def initialize
    @stack = []
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
    @limit = 10
  end

  # add item to top of stack if not full
  # if full, throw error
  def push(item)
    raise 'Stack is full' if isFull?
    @stack.push(item)
  end

  # remove item from top of stack and return it
  def pop
    @stack.empty ? nil : @stack.pop
  end

  # return item at top of stack without removing it
  def peek
    @stack.last
  end

  # return true if stack is empty, otherwise false
  def isEmpty?
    size.zero?
  end

  # return true if stack is full, otherwise false
  def isFull?
    size == @limit
  end

  # return number of items in stack
  def size
    @stack.length
  end

  # return -1 if item not in stack, otherwise integer representing 
  # how far it is from the top
  def search(target)
    @stack.each_with_index do |index, idx|
      return size - index - 1 if item == target
    end
    -1
  end

  # print contents of stack: do not return the stack itself!
  def print
    puts @stack.join(' <- ')
  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
end

