local obj = {
    greetingPeople = "Hello There"
}
local rect = display.newRect(165, 200, 200, 50)
rect.fill = {
    0, 0.8, 0
}
local img = display.newText(obj.greetingPeople, 165, 200)
img:setFillColor(1, 0, 0)
img.size = 30
local toggle = true
function clickYeah()
    if(toggle) then
        display.setDefault("background", 0, 0, 1)
    else
        display.setDefault("background", 1, 0, 0)
    end
    toggle = not toggle
    return true
end
rect:addEventListener("tap", clickYeah)