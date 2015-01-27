require_relative 'node'

class BST
  attr_accessor :root

  def initialize
    @root = nil;
  end

  def insert(data)
    node = Node.new(data, nil, nil)
    if @root == nil
      @root = node
    else
      current = @root
      loop do
        ancestor = current
        if data < current.data
          current = current.left
          if current == nil
            ancestor.left = node
            break
          end
        else
          current = current.right
          if current == nil
            ancestor.right = node
            break
          end
        end
      end
    end
  end

  def in_order(node)
    if node == nil
      return
    else
      in_order(node.left)
      puts node.show
      in_order(node.right)
    end
  end

  def pre_order(node)
    if node == nil
      return
    else
      puts node.show
      in_order(node.left)
      in_order(node.right)
    end
  end

  def post_order(node)
    if node == nil
      return
    else
      puts node.show
      in_order(node.left)
      in_order(node.right)
    end
  end

  def get_min
  end

  def get_max
  end

  def find(data)
  end
end
