--make a game in 30 minutes
require("stolencode")
require("Player")
require("Thing")

function love.load()
    love.window.setTitle("game made in 30 min")
    love.window.setMode(800, 600, {resizable = false})
    score = 0
    Player:load()
    Thing:load()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then 
        love.event.quit()
    end
    Player:update(dt)
    Thing:update(dt)
end

function love.draw()
    Player:draw()
    Thing:draw()
    love.graphics.print(score)
end