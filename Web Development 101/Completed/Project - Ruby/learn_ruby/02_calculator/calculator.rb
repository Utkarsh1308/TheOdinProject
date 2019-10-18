#write your code here
def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(x)
	num = 0
	x.each do |number|
		num = num + number.to_i
	end
	return num
end