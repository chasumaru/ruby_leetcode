# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    i = 0
    nums.each do |k|
        if k != val
            nums[i] = k
            i += 1
        end
    end
    return i
end
