# Write a method that takes in two methods - an array of integers AND an integer to serach for

# Loop through array to see where the number corresponds in the index
def search_array(arr, n)
  index = 0

  while index < arr.length
    return index if arr[index] == n

    index += 1
  end

  nil
end

p search_array([3, 234, 932], 932)

## RELEASE 1 - FIBONACCI SEQUENCE
#Provide the first few numbers in the sequence in the array
#Index -1 and -2 number in the sequence
#Add those two numbers
#push
#Next iteration of the loop will have those new numbers
#Break if length equals the number we specify

def fib(number)
  fib_array = [0, 1]
  while fib_array.length < number
  fib_array.push(fib_array[-1] + fib_array[-2])
  end
  p fib_array
end

p fib(100)

## RELEASE 2 - SORT AN array

# Bubble sort looks at two numbers next to each other in an array. It identifies whichever number is bigger and then, if the first number in the sequence is larger than the second number in the sequence, it swaps the order of the numbers so that the larger numbers are pushed to the end of the array
# Create a loop that will loop through the series of integers length - 1 times
def bubble_sort(array)
  n = array.length
# Within that loop, go through all of the numbers in the array
  loop do
    # Made this so that we can eventually break out of the loop in line 44
    swapped = false
    # Loop through a set of numbers within the array; identify the two numbers we want to look at in the array by using i and i+1
    (n-1).times do |i|
      # Create logic to identify which of these two numbers is bigger; If the first one is larger than than the second one,
      if array[i] > array[i+1]
      # Then swap them
        array[i], array[i+1] = array[i+1], array[i]
      # Consider it swapped
        swapped = true
      end
    end
  # This means...break if swapped is false
  break if not swapped
  end
  array
end

passed_in_array = [1, 2, 1, 5, 3, 6, 4, 8, 19, 13, 2]
p bubble_sort(passed_in_array)
