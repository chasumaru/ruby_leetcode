# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  l = nums.size

  (0...l).each do |i|
    ((i + 1)...l).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end
