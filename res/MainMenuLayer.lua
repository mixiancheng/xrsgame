
require "CCBReaderLoad"
cclog = function(...)
    print(string.format(...))
end
MainMenuLayer = MainMenuLayer or {}
ccb["MainMenuLayer"] = MainMenuLayer
local function startButton(eventName,control,controlEvent)
    -- body
    local labelTTF = tolua.cast(MainMenuLayer["mCCControlEventLabel"],"CCLabelTTF")

    if nil == labelTTF then
        return
    end
    if controlEvent == CCControlEventTouchDown  then      
        labelTTF:setString("Touch Down.")        
    elseif controlEvent == CCControlEventTouchDragInside then
        labelTTF:setString("Touch Drag Inside.") 
    elseif controlEvent == CCControlEventTouchDragOutside then
        labelTTF:setString("Touch Drag Outside.") 
    elseif controlEvent == CCControlEventTouchDragEnter then
        labelTTF:setString("Touch Drag Enter.") 
    elseif controlEvent == CCControlEventTouchDragExit then
        labelTTF:setString("Touch Drag Exit.") 
    elseif controlEvent == CCControlEventTouchUpInside then
        labelTTF:setString("Touch Up Inside.") 
    elseif controlEvent == CCControlEventTouchUpOutside then
        labelTTF:setString("Touch Up Outside.") 
    elseif controlEvent == CCControlEventTouchCancel then
        labelTTF:setString("Touch Cancel.") 
    elseif controlEvent == CCControlEventValueChanged  then
        labelTTF:setString("Value Changed.") 
    end
     labelTTF:setString("startButton")
end
local function moreButton(eventName,control,controlEvent)
    -- body
    local labelTTF = tolua.cast(MainMenuLayer["mCCControlEventLabel"],"CCLabelTTF")

    if nil == labelTTF then
        return
    end

    if controlEvent == CCControlEventTouchDown  then      
        labelTTF:setString("Touch Down.")        
    elseif controlEvent == CCControlEventTouchDragInside then
        labelTTF:setString("Touch Drag Inside.") 
    elseif controlEvent == CCControlEventTouchDragOutside then
        labelTTF:setString("Touch Drag Outside.") 
    elseif controlEvent == CCControlEventTouchDragEnter then
        labelTTF:setString("Touch Drag Enter.") 
    elseif controlEvent == CCControlEventTouchDragExit then
        labelTTF:setString("Touch Drag Exit.") 
    elseif controlEvent == CCControlEventTouchUpInside then
        labelTTF:setString("Touch Up Inside.") 
    elseif controlEvent == CCControlEventTouchUpOutside then
        labelTTF:setString("Touch Up Outside.") 
    elseif controlEvent == CCControlEventTouchCancel then
        labelTTF:setString("Touch Cancel.") 
    elseif controlEvent == CCControlEventValueChanged  then
        labelTTF:setString("Value Changed.") 
    end
     labelTTF:setString("moreButton")
end
local function setButton(eventName,control,controlEvent)
    -- body
    local labelTTF = tolua.cast(MainMenuLayer["mCCControlEventLabel"],"CCLabelTTF")

    if nil == labelTTF then
        return
    end

    if controlEvent == CCControlEventTouchDown  then      
        labelTTF:setString("Touch Down.")        
    elseif controlEvent == CCControlEventTouchDragInside then
        labelTTF:setString("Touch Drag Inside.") 
    elseif controlEvent == CCControlEventTouchDragOutside then
        labelTTF:setString("Touch Drag Outside.") 
    elseif controlEvent == CCControlEventTouchDragEnter then
        labelTTF:setString("Touch Drag Enter.") 
    elseif controlEvent == CCControlEventTouchDragExit then
        labelTTF:setString("Touch Drag Exit.") 
    elseif controlEvent == CCControlEventTouchUpInside then
        labelTTF:setString("Touch Up Inside.") 
    elseif controlEvent == CCControlEventTouchUpOutside then
        labelTTF:setString("Touch Up Outside.") 
    elseif controlEvent == CCControlEventTouchCancel then
        labelTTF:setString("Touch Cancel.") 
    elseif controlEvent == CCControlEventValueChanged  then
        labelTTF:setString("Value Changed.") 
    end
     labelTTF:setString("setButton")
end
local function aboutButton(eventName,control,controlEvent)
    -- body
    local labelTTF = tolua.cast(MainMenuLayer["mCCControlEventLabel"],"CCLabelTTF")

    if nil == labelTTF then
        return
    end

    if controlEvent == CCControlEventTouchDown  then      
        labelTTF:setString("Touch Down.")        
    elseif controlEvent == CCControlEventTouchDragInside then
        labelTTF:setString("Touch Drag Inside.") 
    elseif controlEvent == CCControlEventTouchDragOutside then
        labelTTF:setString("Touch Drag Outside.") 
    elseif controlEvent == CCControlEventTouchDragEnter then
        labelTTF:setString("Touch Drag Enter.") 
    elseif controlEvent == CCControlEventTouchDragExit then
        labelTTF:setString("Touch Drag Exit.") 
    elseif controlEvent == CCControlEventTouchUpInside then
        labelTTF:setString("Touch Up Inside.") 
    elseif controlEvent == CCControlEventTouchUpOutside then
        labelTTF:setString("Touch Up Outside.") 
    elseif controlEvent == CCControlEventTouchCancel then
        labelTTF:setString("Touch Cancel.") 
    elseif controlEvent == CCControlEventValueChanged  then
        labelTTF:setString("Value Changed.") 
    end
    labelTTF:setString("aboutButton")
end
local function menuClick()
    -- body
    cclog("-------------------")
    if nil ~= MainMenuLayer["mAnimationManager"] then  
            local animationMgr = tolua.cast(MainMenuLayer["mAnimationManager"],"CCBAnimationManager")  
            if nil ~= animationMgr then  
                animationMgr:runAnimationsForSequenceNamedTweenDuration("moveAni", 0)  --执行myClick动画  
            end  
        end  
end
local function moveMidle()
    -- body
    cclog("movemiddle")
	cclog("")
end
MainMenuLayer["startButton"]=startButton
MainMenuLayer["moreButton"]=moreButton
MainMenuLayer["setButton"]=setButton
MainMenuLayer["aboutButton"]=aboutButton
MainMenuLayer["menuA"]=menuClick
-- MainMenuLayer["movemidle"]=moveMidle
local function MainMenuLayer()
    local size = CCDirector:sharedDirector():getWinSize()
    local  proxy = CCBProxy:create()
    cclog("-------MainMenuLayer")
    local  node  = CCBuilderReaderLoad("ccbi/MainMenuLayer.ccbi",proxy,MainMenuLayer)
    local  layer = tolua.cast(node,"CCLayer")
    local pLable = CCLabelTTF:create("workInLua!!!!!!!!!!!!!!!!", "Marker Felt", 30)
    pLable:setPosition(ccp(size.width / 2, size.height))
    pLable:setAnchorPoint(ccp(0.5,1))
    pLable:setColor(ccc3(255, 0, 0))
    layer:addChild(pLable)
    return layer
end
function runCocosBuilder()
    cclog("HelloCCBSceneTestMain")
    local scene = CCScene:create()
    scene:addChild(MainMenuLayer())
    return scene
end
