# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}

def is_balanced(root)
  # ヘルパー関数（高さとバランス判定を同時に行う）
  def check(node)
    return [true, 0] if node.nil?

    left_balanced, left_height = check(node.left)
    right_balanced, right_height = check(node.right)

    current_balanced = left_balanced && right_balanced && (left_height - right_height).abs <= 1
    current_height = [left_height, right_height].max + 1

    [current_balanced, current_height]
  end

  balanced, _ = check(root)
  balanced
end
