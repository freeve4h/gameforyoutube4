Player = {}

function Player:load()
    Player.xpos = 400
    Player.ypos = 300 
    Player.Width = 32
    Player.Height = 32
    Player.Speed = 400
    Player.Image = love.graphics.newImage("Player.png")
end

function Player:update(dt)
    if Thing.xpos < Player.xpos then 
        Player:left(dt)
    end
    if Thing.xpos > Player.xpos then 
        Player:right(dt)
    end
    if Thing.ypos < Player.ypos then 
        Player:up(dt)
    end
    if Thing.ypos > Player.ypos then 
        Player:down(dt)
    end
    Player:Bounds()
end

function Player:up(dt)
    Player.ypos = Player.ypos - Player.Speed * dt 
end

function Player:down(dt)
    Player.ypos = Player.ypos + Player.Speed * dt 
end

function Player:left(dt)
    Player.xpos = Player.xpos - Player.Speed * dt 
end

function Player:right(dt)
    Player.xpos = Player.xpos + Player.Speed * dt
end

function Player:draw()
    love.graphics.draw(Player.Image, Player.xpos, Player.ypos)
end

function Player:Bounds()
    if Player.xpos < 0 then 
        Player.xpos = 0 
    end
    if Player.ypos < 0 then 
        Player.ypos = 0 
    end
    if Player.xpos + Player.Width > 800 then 
        Player.xpos = 800 - Player.Width 
    end
    if Player.ypos + Player.Height > 600 then 
        Player.ypos = 600 - Player.Height 
    end
end