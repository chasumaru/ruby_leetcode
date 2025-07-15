def is_symmetric(root)
  return true if root.nil?

  def is_mirror(t1, t2)
    return true if t1.nil? && t2.nil?
    return false if t1.nil? || t2.nil? || t1.val != t2.val

    is_mirror(t1.left, t2.right) && is_mirror(t1.right, t2.left)
  end

  is_mirror(root.left, root.right)
end

# Quene
def is_symmetric(root)
  return true if root.nil?

  queue = [[root.left, root.right]]
  
  until queue.empty?
    t1, t2 = queue.shift

    next if t1.nil? && t2.nil?
    return false if t1.nil? || t2.nil? || t1.val != t2.val

    queue.push([t1.left, t2.right])
    queue.push([t1.right, t2.left])
  end

  true
end
