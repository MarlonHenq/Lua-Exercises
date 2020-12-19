--Recite the lyrics to that beloved classic, that field-trip favorite: 99 Bottles of Beer on the Wall:
--  "99 bottles of beer on the wall, 99 bottles of beer.
--  Take one down and pass it around, 98 bottles of beer on the wall...
--  [...]
--  1 bottle of beer on the wall, 1 bottle of beer.
--  Take it down and pass it around, no more bottles of beer on the wall.

--  No more bottles of beer on the wall, no more bottles of beer.
--  Go to the store and buy some more, 99 bottles of beer on the wall."

--Check out the challenge in: https://exercism.io/my/solutions/40bbb458c2254519bb45184d1fbdc46d

beersInTheWall = 99


for i = beersInTheWall,1,-1  do
   if i == 1 then
       print("1 bottle of beer on the wall, 1 bottle of beer. \n Take it down and pass it around, no more bottles of beer on the wall. \n  No more bottles of beer on the wall, no more bottles of beer.")
       print("Go to the store and buy some more, " .. tostring(beersInTheWall) .. " bottles of beer on the wall.")
   else
        print(tostring(i) .. " bottles of beer on the wall, " .. tostring(i) .. " bottles of beer. \n Take one down and pass it around, " .. tostring(i-1) .." bottles of beer on the wall.")
   end
end