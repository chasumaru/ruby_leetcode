# Stack (LIFO)
def is_same_tree(p, q)
  stack = [[p, q]]

  until stack.empty?
    node1, node2 = stack.pop

    if node1.nil? && node2.nil?
      next
    elsif node1.nil? || node2.nil? || node1.val != node2.val
      return false
    end

    stack.push([node1.left, node2.left])
    stack.push([node1.right, node2.right])
  end

  true
end

# Recursive
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil? || p.val != q.val

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end
