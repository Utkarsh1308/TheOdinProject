#write your code here
def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(arg, number=2)
	rep = (arg + ' ') * number
	rep.rstrip
end

def start_of_word(word, num)
	word[0..num-1]
end

def first_word(words)
	list = words.split()
	list[0]
end

def titleize(words)
	list = words.split()
	new = []
	little_words = ['and', 'over', 'the']
	list.each do |word|
		new.push word.capitalize
	end
	new.each do |lower|
		if lower == 'And' or lower == 'The' or lower == 'Over'
			lower = lower.downcase
		end
	end
	final = ''
	new.each do |x|
		if x == 'And' or x == 'The' or x == 'Over'
			x = x.downcase
		end
		final = final + x + ' '
	end
	if final[0..2] == 'the' or final[0..2] == 'and' or final[0..2] == 'over'
		final[0..2] = final[0..2].capitalize
	end
	puts final
	return final.rstrip
end

puts titleize('war and peace')