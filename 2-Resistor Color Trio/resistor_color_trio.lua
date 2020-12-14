
--Check out the challenge in: https://exercism.io/my/solutions/7f1dfae477fe4cfaafbd800152b3c7b1

colors = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

inputs = {}
count_inputs = 0
result = ""

print("Type the colors of your resistor (separating them by enter) in ascending order without adding the tolerance color \n")
print("Colors: black, brown, red, orange, yellow, green, blue, violet, grey, white")

function verify(color)
    number = -1
    while true do
        if color == colors[number] then
            break
        else 
            number = number + 1
        end
    end
    return number
end

input = io.read()
while true do
    if input == "" then
        break
    else
        inputs[count_inputs] = input
        count_inputs = count_inputs + 1

        input = io.read()
    end
end

array_size = count_inputs - 1

count = 0
while count < array_size do
    result = result .. verify(inputs[count])
    count = count + 1
end

number_of_zeros = verify(inputs[array_size])

count = 0
while number_of_zeros >= count do
    result = result .. 0
    count = count + 1
end

print(tonumber(result) .. ohms)