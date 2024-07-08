-- taken from ItsJustChris on YT

function checkDirection(direction)
    if direction == true then
        turtle.turnRight()
    else
        turtle.turnLeft()
    end
end
 
direction = true
level = 0
while (level < 40) do
    a = 0
    repeat
        i = 0
        repeat
            turtle.dig()
            turtle.forward()
            i = i + 1
        until (i > 4)
        if a < 5 then
            checkDirection(direction)
            turtle.dig()
            turtle.forward()
            checkDirection(direction)
            if direction == true then
                direction = false
            else
                direction = true
            end
        else
            print("Stopped")
        end
        a = a + 1
    until (a > 5)
    turtle.turnRight()
    j = 0
    repeat
        turtle.forward()
        j = j + 1
        print(j)
    until (j >= 5)
    turtle.turnRight()
    turtle.digDown()
    turtle.down()
    direction = true
    level += 1
end
