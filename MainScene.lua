
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	--[[
	luaoc.callStaticMethod(className, methodName,args)
	只能调用Objective-C类的类方法
	string className :Objective-C类名 
	string methodName:Objective-C类方法名 
	table args :Objective-C类方法所需要的各种参数字典,key值为方法的参数名
	]]--

	--调用OC无参方法
    luaoc.callStaticMethod("Test", "myPrint")
    --调用OC有参方法
    --boolean ok, mixed ret
    -- args = {numA = 100, numB = 200}
    -- local ok,ret = luaoc.callStaticMethod("Test", "addNumber",args)
    -- if ok then
    -- 	print(ret)
    -- else
    -- 	print(ret)
    -- end

    -- --OC回调Lua方法
    -- local function func(a)
    --     print(a)
    
    -- end
    
    -- luaoc.callStaticMethod("Test", "callLuaFunction",{LuaFunc = func})

end


function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
