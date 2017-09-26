# 1.Find the most frequent integer in an array

array = [1, 2, 1, 1, 4, 6, 7, 1, 2, 2, 1, -1]
@hash = Hash.new(0)

def count_frequency(array)
  array.each do |a|
    if @hash[a]
      @hash[a] += 1
    else
      @hash[a] = 1
    end
  end
  return @hash
end
count_frequency(array)

@highest_frequency = 0
@hash.each do |k,v|
  if v > @highest_frequency
    @highest_frequency = v
  end
  @most_frequent = @hash.key(@highest_frequency)
end
puts @highest_frequency
puts @most_frequent