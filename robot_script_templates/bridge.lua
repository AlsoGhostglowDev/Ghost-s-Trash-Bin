local r = require 'robot'

local railings = true

local function forward()
    if r.detect() then r.swing() end
    r.forward()
end

local function place(fwd)
    if not r.detectDown() then
        r.placeDown()
    end

    if (fwd == nil and true or fwd) then
        forward()
    end
end

local length = 0
local width = 2
for i = 1, math.huge do
    place()

    if i > 5 and r.detectDown() then
        length = i + 1
        break
    end
end

for i = 1, width+1 do
    local turn = (i % 2 == 0 and r.turnLeft or r.turnRight)
    turn()
    forward()
    turn()

    for i = 1, length+1 do
        place(i < length)
    end
end

if railings then
    r.turnAround()
    r.up()
    r.select(2)

    for j = 1, 2 do
        for i = 1, length+1 do
            place(i < length)
        end

        if j == 1 then
            ((width+1) % 2 == 0 and r.turnRight or r.turnLeft)()
            for i = 1, width+1 do
                forward()
            end
            ((width+1) % 2 == 0 and r.turnRight or r.turnLeft)()
        end
        r.placeDown()
    end
end