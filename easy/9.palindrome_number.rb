# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0
  str = x.to_s
  str == str.reverse
end
