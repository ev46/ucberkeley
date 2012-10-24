class Numeric
  @@currencies = {'dollar' => 1.000, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id, *args)

    case method_id.to_s
      when "in"
        singular_currency = args[0].to_s.gsub( /s$/,'');
        if @@currencies.has_key?(singular_currency)
          self / @@currencies[singular_currency]
        else
          super
        end
      else
        singular_currency = method_id.to_s.gsub( /s$/, '')
       if @@currencies.has_key?(singular_currency)
          self * @@currencies[singular_currency]
       else  
          super
       end
    end
   
  end
end

class String
  def method_missing(method_id)
    if method_id.to_s == "palindrome?"
      original = self.gsub(/\W/,'').downcase
      reverse = original.reverse
      original == reverse
    else
      super
    end
  end
end

module Enumerable
  def method_missing(method_id)
    if method_id.to_s == "palindrome?"
      to_array = self.to_a
      reverse = to_array.reverse
      self.each_with_index do |item,index|
        if not to_array[index] == reverse[index]
          return false
        else
          #nothing
        end
      end
      return true
    else
      super
    end
  end
end

#puts (1..4).palindrome?
#puts ['car','bar','dar','bar','car'].palindrome?

#puts 5.dollar.in(:rupee)