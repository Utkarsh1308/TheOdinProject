#write your code here
def translate(word)
	vowels = ['a', 'e', 'i', 'o', 'u']
	
	
	
	word_list = word.split()
	final = []
	
	word_list.each do |new_word|

		if 'qu' == new_word[0..1]
			new_word = new_word[2..new_word.length-1] + new_word[0..1]
		end
		
		while not vowels.include?(new_word[0])
			new_word = new_word[1..new_word.length-1] + new_word[0]
			if 'qu' == new_word[0..1]
				new_word = new_word[2..new_word.length-1] + new_word[0..1]
			end
		end
		
		
		
		new_word = new_word + "ay"	
		final.push(new_word)
	end
	word_string = ''
	final.each do |x|
		word_string = word_string + x + ' ' 
	end
	word_string.rstrip()
end

puts translate('quiet')