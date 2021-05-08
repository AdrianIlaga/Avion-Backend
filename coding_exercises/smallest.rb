arr1 = [35, 15, 88, 2]
arr2 = [34, -345, -1, 100]

def getLowest(arr)
    lowest = nil
    arr.each do |num|
        if (lowest == nil || num < lowest)
            lowest = num
        end
    end
    puts lowest
end

getLowest(arr1)
getLowest(arr2)