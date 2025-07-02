# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    # Array → Integer
    int = digits.join.to_i
    # 演算処理
    ans = (int + 1).to_s.split('').map(&:to_i) 
    return ans
end


# 別解：筆算処理 ~ O(n) -> 巨大数にも対応

def plus_one(digits)
  i = digits.length - 1

  while i >= 0
    if digits[i] < 9
      digits[i] += 1
      return digits
    end
    digits[i] = 0
    i -= 1
  end

  [1] + digits
end
