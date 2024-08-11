local r = require 'robot'

local function loopFunc(f, n) 
    for i = 1, n do f(i) end
end

local function main()
    r.turnRight()
    loopFunc(function(_)
        r.swing()
        r.swingDown()
        r.down()
    end, 3)
    r.swing()
    r.turnLeft()
    loopFunc(r.up, 2)
end

main()

for i = -1, math.huge, 1 do
    if (i % 8 == 0) then
        r.turnRight()
        r.place()
        r.turnLeft()
    end
    r.swing()
    r.forward()

    main()
end
