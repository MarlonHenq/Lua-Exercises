
--Check out the challenge in: https://exercism.io/my/solutions/b369e52590be4d1789560b83ac632a4f

inputString = "test test keyboard potato test keyboard test potato keyboard keyboard display"

arrayString = {}
words = {}
wordCount = {}

function split(string) -- Split the string
    i = 0
    a = {}
    for w in string.gmatch(string, "%a+") do
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

function printResults(arrayWords, arrayNumbers)
    arraySize = arrayLen(arrayWords) - 1
    printString = ""

    for i=0, arraySize do
        printString = printString .. tostring(arrayWords[i]) .. ": " .. tostring(arrayNumbers[i]) .. " | "
    end
    print(printString)
end

arrayString = split(inputString)

sizeString = arrayLen(arrayString)

print("Number Of Words: " .. sizeString)

for i=0,sizeString-1 do
    sizeWords = arrayLen(words)

    for a=0,sizeWords do

        if words[a] == arrayString[i] then
            wordCount[a] = wordCount[a] + 1
            break
        elseif words[a] == nil then
            wordCount[a] = 1
            words[a] = arrayString[i]
            break
        end
    end

end

printResults(words, wordCount)