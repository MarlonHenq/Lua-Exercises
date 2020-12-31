--Given a single stranded DNA string, compute how many times each nucleotide occurs in the string.

--Check out the challenge in: https://exercism.io/my/solutions/a7bc5995efa34656b27b14a8407d0b3f

inputString = "CGAGCCTACTAACGGGAT"
nucleotides = "ACGT" --To use this code for RNA, replace "T" with "U" or for others sequences use other nucleotides...

nucleotidesCount = {}
lenNucleotides = 4

function split(string) -- Split the string
    i = 0
    a = {}
    for w in string.gmatch(string, "%a") do
        a[i] = w
        i = i + 1
    end
    return a
end

upperInput = string.upper(inputString)
stringInArray = split(upperInput)
lenArray = string.len(upperInput)
nucleotidesInArray = split(nucleotides)

for i=0,lenArray-1 do
    for a=0,lenNucleotides-1 do
        if nucleotidesInArray[a] == stringInArray[i] then
            if nucleotidesCount[a] == nil then
                nucleotidesCount[a] = 1
                break
            else
                nucleotidesCount[a] = nucleotidesCount[a] + 1
                break
            end
        end
    end
end

print("Input String: " .. upperInput)
for i=0,lenNucleotides-1 do
    print(nucleotidesInArray[i] .. ": " .. nucleotidesCount[i])
end