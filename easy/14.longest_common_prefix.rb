# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    prefix = ""

    # 最小の要素の文字数
    min_length = strs.map { |s| s.length }.min
    min_length.times do |i|
        # 最初の要素のi番目の文字
        char = strs[0][i]
        # 各要素のi番目の文字と一致を比較 →不一致の場合 prefix 出力
        strs.each do |s|
          return prefix if s[i] != char
        end
        # 各要素のi番目の文字が一致すれば、prefix に追加
        prefix << char
    end
    prefix
end
