# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  ary = s.chars
  total = 0

  ary.each_with_index do |char, i|
    current = roman[char]
    next_val = roman[ary[i + 1]]

    if next_val && current < next_val
      total -= current
    else
      total += current
    end
  end

  total
end
