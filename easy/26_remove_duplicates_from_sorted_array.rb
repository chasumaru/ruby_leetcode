# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  i = 0
  (1...nums.length).each do |j|
    if nums[j] != nums[i]
      i += 1
      nums[i] = nums[j]
    end
  end
  (i+1...nums.length).each {|k| nums[k] = nil} 
  return i + 1
end
