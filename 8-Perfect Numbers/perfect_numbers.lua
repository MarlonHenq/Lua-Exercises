--Determine if a number is perfect, abundant, or deficient based on Nicomachus' (60 - 120 CE) classification scheme for natural numbers.

--Perfect: aliquot sum = number
--6 is a perfect number because (1 + 2 + 3) = 6

--Abundant: aliquot sum > number
--12 is an abundant number because (1 + 2 + 3 + 4 + 6) = 16

--Deficient: aliquot sum < number
--8 is a deficient number because (1 + 2 + 4) = 7


--Check out the challenge in: https://exercism.io/my/solutions/fb1a2d981ebc4ecbafcc7bdf5152b9b1

print("Type a number to test if it is a Perfect/Abundant/Deficient number...")
inputNumber = tonumber(io.read())

sumOfDividers = 0

for i=1,inputNumber-1 do
    if inputNumber % i == 0 then
        sumOfDividers = sumOfDividers + i
    end
end

if sumOfDividers > inputNumber then
    print("this is a Abundant number")
elseif sumOfDividers == inputNumber then
    print("this is a Perfect number")
else
    print("this is a Deficient number")
end