--The purpose of this exercise is: "Find the difference between the square of the sum and the sum of the squares of the first N natural numbers."
--Check out the challenge in: https://exercism.io/my/solutions/c3266ed1392a4d818befd99ce9bbc206

print("Enter the maximum number:")
maxNumber = io.read()

function square_of_the_sum()
    number = 0

    for i = maxNumber,1,-1 do 
        number = number + i
    end

    result = number * number
    return result
end

function sum_of_the_squares()
    sum = 0

    for i = maxNumber,1,-1 do 
        sum = sum + i * i
    end

    result = sum
    return result
end

diference = square_of_the_sum() - sum_of_the_squares()

print("The diference is: " .. diference)