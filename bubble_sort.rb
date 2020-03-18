def bubble_sort(arr)
  sorted = true
  while sorted

    sorted = false

    (arr.length - 1).times do |i|;
      if arr[i] > arr[i + 1]

        arr[i], arr[i + 1] = arr[i + 1], arr[i]

        sorted = true
      end
    end
  end
  arr
end

a = [10, 1, 2, 5, 3, 6, 4, 9, 8, 10, 4]

a = bubble_sort(a)
puts a

# Bubble_sort_by

def bubble_sort_by(array)
  array_length = array.length
  array_length.times do |n|
    (array_length - n - 1).times do |m|
      yield_var = yield(array[m], array[m + 1])
      next unless yield_var.positive?

      first_num = array[m]
      second_num = array[m + 1]
      array[m] = second_num
      array[m + 1] = first_num
    end
  end
  array
end
