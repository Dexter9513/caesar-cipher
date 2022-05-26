def get_max(array)
    max = 0
    array.each_index do |i|
        if array[i] > array[max]
            max = i
        end
    end
    max
end
            
def profit(array, index1, index2)
    array[index2] - array[index1]
end

def stocker_picker(array)
    best = [0, 0]
    array.each_with_index do |element, i|
        max_index = i + get_max(array[i .. -1])
        if profit(array, i, max_index) > profit(array, best[0], best[1])
            best = [i, max_index]
        end
    end
    best
end

p stocker_picker([17,3,6,9,15,8,6,1,10])
p stocker_picker([5, 4, 3, 2, 1])
p stocker_picker([1, 2, 3, 4, 5])