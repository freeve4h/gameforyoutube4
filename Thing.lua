Thing = {}

function Thing:load()
    Thing.xpos = math.random(0, 800 - 32)
    Thing.ypos = math.random(0, 600 - 32)
    Thing.Width = 32
    Thing.Height = 32 
end

function Thing:update(dt)
    if checkCollision(Thing.xpos, Thing.ypos, Thing.Width, Thing.Height, Player.xpos, Player.ypos, Player.Width, Player.Height) then 
        Thing.xpos = math.random(0, 800 - 32)
        Thing.ypos = math.random(0, 600 - 32)
        score = score + 1
    end
end

function Thing:draw() 
    love.graphics.setColor(0, 1, 0)
    love.graphics.rectangle("fill", Thing.xpos, Thing.ypos, Thing.Width, Thing.Height)
    love.graphics.setColor(1, 1, 1)
end