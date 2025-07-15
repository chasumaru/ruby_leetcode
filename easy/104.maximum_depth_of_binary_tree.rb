# DFS
def max_depth(root)
  return 0 if root.nil?

  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  [left_depth, right_depth].max + 1
end

# BFS (Quene)
def bfs(root)
  return if root.nil?

  queue = [root]
  until queue.empty?
    node = queue.shift
    puts node.val
    queue << node.left if node.left
    queue << node.right if node.right
  end
end

