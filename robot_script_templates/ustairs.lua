local r = require 'robot'
r.setLightColor(0x888888)

local function loopFunc(f, n) 
    for i = 1, n do f() end
end

local function main()
    r.turnRight()
    loopFunc(function()
        r.swing()
        r.swingDown()
        r.down()
    end, 3)
    r.swing()
    r.turnLeft()
    loopFunc(r.up, 2)
end

main()

local i = -1
while true do
    i = i + 1
    if (i % 8 == 0) then
        r.turnRight()
        r.place()
        r.turnLeft()
    end
    r.swing()
    r.forward()

    main()
end