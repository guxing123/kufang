local EXNode = class("EXNode", function()
	return display.newNode()
	end)

function EXNode:ctor()
	--[[
	该句为EXNode类添加了扩展的事件处理方法，现在我们可以使用EventProxy中的函数了，通
	过这些函数我们可以让EXNode接收到自定义的消息然后进行处理]]
	cc.GameObject.extend(self):addComponent("components.behavior.EventProtocol"):exportMethods()
	cc.ui.UIPushButton.new({normal = "music1.png",pressed = "music1.png"})
	:align(display.CENTER, display.cx, display.cy)
	:onButtonClicked(function()
		self:getChildEvent()
		end)
	:addTo(self)	
end

function EXNode:getChildEvent()
	self:dispatchEvent({name = "MY_NEWS"})
end

function EXNode:onEnter()
	self:setTouchEnabled(true)
end

function EXNode:onExit()
	self:removeAllEventListeners()
end

return EXNode