def bubble_sort(array)
  (array.length - 1).downto(0) do |j|
    sorted = true
    for i in 0..j - 1
      next unless array[i + 1] < array[i]

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
      sorted = false
    end
    break if sorted
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
