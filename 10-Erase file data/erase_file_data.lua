-- This is just a code to delete the entire contents of a file

function split(string) -- Split the string
    i = 0
    a = {}
    for w in string.gmatch(string, "%a+") do
        a[i] = w
        i = i + 1
    end
    return a
end

FileName = io.read()

Array = split(FileName)

if Array[1] == nil then
    file = io.open(FileName .. ".lua", "w+")
else
    file = io.open(FileName, "w+")
end