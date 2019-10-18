class Timer
  #write your code here
  def initialize()
	@seconds = 0
  end
  
  def seconds
	@seconds
  end
  
  def seconds=(seconds)
	@seconds = seconds
  end
  
  def time_string
	@seconds2 = @seconds % (24 * 3600)
	@hours = seconds / 3600
	@seconds3 = @seconds2 %= 3600
	@minutes = @seconds3/60
	@seconds3 %= 60

	return convert(@hours) + ':' + convert(@minutes) + ':' + convert(@seconds3)
  end
  
  def convert(name)
	if name/10 == 0
		name = '0' + name.to_s
	else
		name = name.to_s
	end
  end
end
