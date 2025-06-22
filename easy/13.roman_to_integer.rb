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


# 2文字一致での処理
def roman_to_int(s)
  map = {
    "IV" => 4, "IX" => 9, "XL" => 40,
    "XC" => 90, "CD" => 400, "CM" => 900,
    "I" => 1, "V" => 5, "X" => 10,
    "L" => 50, "C" => 100, "D" => 500, "M" => 1000
  }

  i = 0
  total = 0

  while i < s.length
    if i + 1 < s.length && map[s[i, 2]]
      total += map[s[i, 2]]
      i += 2
    else
      total += map[s[i]]
      i += 1
    end
  end

  total
end
