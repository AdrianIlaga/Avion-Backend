arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
arr2 = [0,0,0,0,0]
arr3 = [1]
arr4 = [-1]

def count(arr)
    array = []
    hasInput = false
    positive = 0
    negative = 0

    arr.each do |num|
           
        if (num > 0)
            positive += 1
            hasInput = true
        elsif (num <= 0)
            negative += num
            hasInput = true
        end 

    end

    if (hasInput)
        array = [positive, negative]
    end

    # print array
    return array

end

count(arr)
count(arr2)
count(arr3)
count(arr4)