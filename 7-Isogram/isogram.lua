--Determine if a word or phrase is an isogram. 
--An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

--Examples of isograms:
--  lumberjacks
--  background
--  downstream
--  six-year-old

--Check out the challenge in: https://exercism.io/my/solutions/d5bb383f2676462f95c4fc95135f6723

letters = {}
lettersCount = {}
stringInArray = {}

function splitStringToArray(string) -- Split the string
    i = 0
    array = {}
    for w in string.gmatch(string, "%a") do
        array[i] = w
        i = i + 1
    end
    return array
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

print("Type a string to find out if it is a histogram:")
inputString = io.read()

removeSpace = string.gsub(inputString, " ", "")
removeHyphens = string.gsub(removeSpace, "-", "")

stringInArray = splitStringToArray(removeHyphens)

sizeString = arrayLen(stringInArray)

for i=0,sizeString-1 do
    sizeLetters = arrayLen(letters)

    for a=0,sizeLetters do

        if letters[a] == stringInArray[i] then
            lettersCount[a] = lettersCount[a] + 1
            break
        elseif letters[a] == nil then
            lettersCount[a] = 1
            letters[a] = stringInArray[i]
            break
        end
    end

end

--Contage

loopNumber = arrayLen(lettersCount)

for i=0,loopNumber-1 do
    if lettersCount[i] > 1 then
        print("This string is not an isogram!")
        isAIsogram = false
        break
    end
end

if isAIsogram == false then
else
    print("This string is a isogram!")
end