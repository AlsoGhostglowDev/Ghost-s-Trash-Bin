local r = require 'robot'
local c = require 'component'

-- The amount of minutes the robot should rest for
local restDur = 15

local function check()
    return c.geolyzer.analyze(0).growth == 1
end

-- this variable decides if the robot should stop harvesting (if harvestRate is 0)
local harvestRate = 8
local function harvest()
    if r.detectDown() then
        if check() then
            r.swingDown()
            r.placeDown()
            harvestRate = harvestRate + 1
        end
    else
        r.placeDown()
    end
end

local fixedFailed = 0
local failed = 0
local i = 0
local function turn()
    i = i + 1
    if failed >= 2 then
        i = i+1
        fixedFailed = fixedFailed + 1
        failed = 0

        if harvestRate == 0 and fixedFailed >= 2 then
            if (restDur < 1) then
                print('Sleeping for '.. math.abs(restDur * 60) ..' seconds...')
            else
                print('Sleeping for '.. math.abs(restDur) ..' minutes...')
            end
            os.sleep(math.abs(restDur) * 60)
    
            fixedFailed = 0
            harvestRate = 8
        end
    end

    local turnLR = ((i % 2 == 0) and r.turnLeft or r.turnRight)
    turnLR()
    if not r.forward() then 
        failed = failed + 1
    end
    turnLR()
    harvest()
end

while true do
    harvest()
    if r.detect() then
        turn()
    end
    r.forward()
    harvestRate = harvestRate - 1
    if (harvestRate < 0) then harvestRate = 0 end
end