def combine_anagrams(words)
	#do stuff
	word_map = {}

	words.each do |word|
		word_map[word] = []
	end

	word_map.keys.each do |key|
		words.each do |word|
			if is_angram?(key,word)
				word_map[key] << word
			end
		end
	end
	

	word_map.values.uniq
end

def is_angram?(w1, w2)
	w1.downcase.split(//).sort == w2.downcase.split(//).sort
end



#input = ['Cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream','cars','A','a'] 

#puts combine_anagrams(input).to_s
#puts is_angram?("heLlo","olleh")

