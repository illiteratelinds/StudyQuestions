# 3.Given 2 integer arrays, determine of the 2nd array is a rotated version of the 1st array. Ex. Original Array A={1,2,3,5,6,7,8} Rotated Array B={5,6,7,8,1,2,3}

a = [1, 2, 3, 4, 5, 6, 7, 8]
b = [3, 4, 5, 6, 7, 8, 1, 2]
c = [1, 2, 3, 4]

def is_rotated(array1, array2)
  count = 0
  if array1.length != array2.length
    puts "false"
  end
  until array1 == array2 || count == array1.length
    element = array2.shift
    array2.push(element)
    count += 1
    if array1 == array2
      puts "true"
    end
  end
end

is_rotated(a, b)
