def palindrome?(string)
    original = string.gsub(/\W/,'').downcase
    reverse = original.reverse
    original == reverse
end

def count_words(string)
    map = {}
    string.gsub(/\W/,' ').downcase.split(' ').each do |i|
      if map[i]
          map[i] = map[i] + 1
        else
          map[i] = 1
      end
    end
    map
          
end