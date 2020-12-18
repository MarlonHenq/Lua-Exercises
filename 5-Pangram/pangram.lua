--A pangram (Greek: παν γράμμα, pan gramma, "every letter") is a sentence using every letter of the alphabet at least once. The best known English pangram is:
--The quick brown fox jumps over the lazy dog.

--Check out the challenge in: https://exercism.io/my/solutions/254db6d486d544ca825c8c21a0b9eb12

inputString = "The quick brown fox jumps over the lazy dog" -- Input string (ps: only latters and spaces)

saveLetters = {}

lowerInputString = string.lower(inputString)

unificateString = string.gsub(lowerInputString, "%s*", "")

function split(string) -- Split the string
    i = 0
    a = {}
    for w in string.gmatch(string, "%a") do
        a[i] = w
        i = i + 1
    end
    return a
end

function arrayLen(array) -- Array word count
    i = 0
    while true do
        if array[i] == nil then
            break
        else
            i = i + 1
        end
    end
    return i
end

stringInArray = split(unificateString)

sizeString = arrayLen(stringInArray)

for i=0,sizeString-1 do
    sizeSaveLetters = arrayLen(saveLetters)

    for a=0,sizeSaveLetters do

        if saveLetters[a] == stringInArray[i] then
            break
        elseif saveLetters[a] == nil then
            saveLetters[a] = stringInArray[i]
            break
        end
    end

end

sizeReturn = arrayLen(saveLetters)

if sizeReturn == 26 then
    print("Yeah! This sentence is a Paragram!")
else
    print("No! This sentence is not a Paragram!")
end