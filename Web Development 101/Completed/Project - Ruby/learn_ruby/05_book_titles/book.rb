class Book
	# write your code here
	def initialize(*args)
		@title = title
	end
	
	def title #getter method
		@title
	end
	
	def title=(title) #setter method
		@title = cap(title)
	end
	
	def cap(name)
		conjunctions = ['and', 'the', 'of', 'in', 'a', 'an']
		list = name.split()
		fin = ""
		if conjunctions.include?(list[0])
			list[0] = list[0].capitalize
		end		
		
		list.each do |word|
			if not conjunctions.include?(word)
				word = word.capitalize
			else
				word = word
			end
			fin = fin + word + ' '
		end
		return fin.rstrip()
	end
end
