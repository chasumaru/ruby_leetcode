# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 基本形 時間計算量：O(n^2)

def two_sum(nums, target)
  l = nums.size

  (0...l).each do |i|
    ((i + 1)...l).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end

# 最適解 → 時間計算量：O(n)
# 補数のHashMapを利用

def two_sum(nums, target)
    ht = {}
    
    nums.each_with_index do |num, i|
        if ht.key?(target - num)
            return [ht[target - num], i]
        end
        
        ht[num] = i
    end
    
    []
end
