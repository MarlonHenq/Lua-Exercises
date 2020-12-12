
--Check out the challenge in: https://exercism.io/my/solutions/7f1dfae477fe4cfaafbd800152b3c7b1

colors = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

inputs = {}
count = 0
count_inputs = 1
result = ""
true_or_false = true

print("Type the colors of your resistor (separating them by enter) in ascending order without adding the tolerance color \n")
print("Colors: black, brown, red, orange, yellow, green, blue, violet, grey, white")

function verify(color)
    number = 0
    true_or_false = true
    while true_or_false do
        if color == colors[number] then
            true_or_false = false
        else 
            number = number + 1
        end
    end

    return number
end

input = io.read()
while true_or_false do
    if input == "" then
        true_or_false = false
    else
        inputs[count] = input
        count_inputs = count_inputs + 1
        input = io.read()
    end
end

array_size = count_inputs

count = 0
while count < count_inputs do
    result = result .. verify(inputs[count])
    count = count + 1
end

number_of_zeros = verify(inputs[count_inputs])

count = 0
while number_of_zeros >= count do
    result = result .. 0
    count = count + 1
end

print(tonumber(result))