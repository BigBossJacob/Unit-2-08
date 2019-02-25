-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local squatScrollspeed = -0.5
local howardScrollspeed = 0.5
local howardCthru = 0.00000000000001
local squatCthru = 0.005

local backgroundImage = display.newImageRect("Assets/thekremlin.png", 1048, 736)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "the kremlin"

-- character image with width and height
local howard = display.newImageRect("Assets/howard.gif", 480, 220)
howard.x = 160
howard.y = display.contentHeight - 600 -- note I am using not the center but the height of the diaplay
howard.ID = "howard"
howard.alpha = 1

-- character image with width and height
local squat = display.newImageRect("Assets/squat.png", 240, 160)
squat.x = 160
squat.y = display.contentHeight - 0 -- note I am using not the center but the height of the diaplay
squat.ID = "squat"
squat.alpha = 0

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
squat.y = squat.y + squatScrollspeed
    print( display.fps )  -- note this displays how fast the current refresh is
end
Runtime:addEventListener( "enterFrame", MoveImage )

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
howard.y = howard.y + howardScrollspeed
    print( display.fps )  -- note this displays how fast the current refresh is
end
Runtime:addEventListener( "enterFrame", MoveImage )

local function ChangeAlpha(event)
	-- add the scroll speed to the x-value of the image
howard.alpha = howard.alpha - howardCthru
    print( display.fps )  -- note this displays how fast the current refresh is
end
Runtime:addEventListener( "enterFrame", ChangeAlpha )

local function ChangeAlpha(event)
	-- add the scroll speed to the x-value of the image
squat.alpha = squat.alpha + squatCthru
    print( display.fps )  -- note this displays how fast the current refresh is
end
Runtime:addEventListener( "enterFrame", ChangeAlpha )