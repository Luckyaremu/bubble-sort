def bubble_sort(arr)
  sorted = true

  while sorted

    sorted = false

    (arr.length - 1).times do |i|
      next unless arr[i] > arr[i + 1]

      arr[i], arr[i + 1] = arr[i + 1], arr[i]

      sorted = true
    end
  end
  arr
end

a = [10, 1, 2, 5, 3, 6, 4, 9, 8, 10, 4]

a = bubble_sort(a)
puts a
