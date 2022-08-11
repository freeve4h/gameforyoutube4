Thing = {}

function Thing:load()
    Thing.xpos = math.random(0, 800 - 32)
    Thing.ypos = math.random(0, 600 - 32)
    Thing.Width = 32
    Thing.Height = 32 
    Thing.image = love.graphics.newImage("thing.png")
end

function Thing:update(dt)
    if checkCollision(Thing.xpos, Thing.ypos, Thing.Width, Thing.Height, Player.xpos, Player.ypos, Player.Width, Player.Height) then 
        Thing.xpos = math.random(0, 800 - 32)
        Thing.ypos = math.random(0, 600 - 32)
        score = score + 1
    end
end

function Thing:draw() 
    love.graphics.draw(Thing.image, Thing.xpos, Thing.ypos)
end