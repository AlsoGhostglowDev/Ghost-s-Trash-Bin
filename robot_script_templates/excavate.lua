local r = require 'robot'
r.setLightColor(-1)

--[[
    Customization:

    width goes in the right-side of the robot,
    length goes in the front of the robot

    height is only two which is the layer the robot is on and the layer 
    ontop of the robot.
]]
local width, length = 25, 25
local fixFloor = true

local function mine()
    r.swing()
    r.swingUp()
    
    if (not r.detectDown() and fixFloor) then
        r.placeDown()
    end
    r.forward()
end

local function turn(n)
    (n % 2 == 0 and r.turnLeft or r.turnRight)()
end

for i = 1, length do
    mine()
end
turn(1)

for i = 1, length do
    for _ = 1, width do
        mine()
    end

    if i < length then
        turn(i)
        mine()
        turn(i)
    end
end