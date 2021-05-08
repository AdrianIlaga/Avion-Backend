def isSquare(num)
    current = 0
    while (current <= num && num >=0)  do
        if current**2 == num
            puts true
            return true
        end
        current+=1
    end
    puts false
    return false
end

isSquare(5)

