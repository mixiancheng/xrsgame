
-- avoid memory leak
collectgarbage("setpause", 100) 
collectgarbage("setstepmul", 5000)
	
require "MainMenuLayer"
----------------


-- run
local scene =runCocosBuilder()
CCDirector:sharedDirector():replaceScene(scene)