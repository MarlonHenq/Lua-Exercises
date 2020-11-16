--This algorithm checks the difference between two strings of DNA
--Check out the challenge in: https://exercism.io/my/solutions/e4c81534ca2641a99b18243ad69724f2

firstDNA = "CGAGCCTACTAACGGGAT" --Input DNAs
secondDNA = "ACATCGTAATGACGGCCT"

matchArrow = "" --Just setting the variables
distance = 0

firstDNA_size = string.len(firstDNA) --The size of the strings
secondDNA_size = string.len(secondDNA)

function match()
    i = 1 --Set the loop variable

    while i <= firstDNA_size do --Loop
        firstDNA_character = string.sub(firstDNA, i, i) --Getting the character in the DNA strands
        secondDNA_character = string.sub(secondDNA, i, i)

        if firstDNA_character == secondDNA_character then --Checking that the characters are the same
            matchArrow = matchArrow .. "^" --If yes, add an arrow
        else
            matchArrow = matchArrow .. " " --If no, space
            distance = distance + 1
        end

        i = i + 1 --Add on loop variable
    end
end

if firstDNA == secondDNA then --Checks if the variables are completely the same to avoid unnecessary processing in case of checking character by character
    print("Completely the same!")

    matchArrow = string.rep("^", firstDNA_size) --Print arrow in all spaces

else
    match()
end

print("Distance = " .. distance .. " \n")

print(firstDNA)
    	
print(matchArrow)

print(secondDNA)
