# 2.Find pairs in an integer array whose sum is equal to 10 (bonus: do it in linear time)

array = [1, 2, 4, 5, 7, 8, 9]

def find_pairs(array)
  pairs = []
  array.each_with_index do |a, index|
    array[index+1..-1].each do |b|
      if a + b == 10
        pairs << [a, b]
      end
      # if total == 10
      #   puts "TOTAL"
      #   puts a, b
      #   puts total
      #   puts "    "
      # end
    end
  end
  puts pairs
end

find_pairs(array)