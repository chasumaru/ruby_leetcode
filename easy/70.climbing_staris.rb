# @param {Integer} n
# @return {Integer}

# フィボナッチ数列

def climb_stairs(n)
  return 1 if n <= 1

  prev1 = 1  # ways(n - 1)
  prev2 = 1  # ways(n - 2)

  (2..n).each do
    current = prev1 + prev2
    prev2 = prev1
    prev1 = current
  end

  prev1
end


# 別解：配列による表現
def climb_stairs(n)
  return 1 if n <= 1

  dp = Array.new(n + 1)
  dp[0] = 1
  dp[1] = 1

  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end

  dp[n]
end
