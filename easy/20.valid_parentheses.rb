# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    brackets = {
        ')' => '(',
        '}' => '{',
        ']' => '['
    }
   
    s.chars.each do |i|
        if brackets.value?(i)
            stack << i
        else
            return false if stack.empty? || stack.pop != brackets[i]
        end
    end
    return true
end
