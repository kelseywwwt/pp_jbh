function love.load()
    love.window.setMode(550, 850) -- Vertical window
    love.graphics.setBackgroundColor(30/255, 28/255, 72/255) -- BG color to dark blue

    local gameStarted = false
    
    homescreen = love.graphics.newImage("img/homescreen.png")

    Object = require "classic"
    require "player"
    require "background"

    player = Player()
    background = Background()
end

function love.update(dt) 
    -- Start game --
    if not gameStarted and love.keyboard.isDown('a') then
        gameStarted = true
    end

    player:update(dt, gameStarted)
end

function love.draw()
    love.graphics.print("x: " .. player.x, 10, 10)
    love.graphics.print("y: " .. player.y, 10, 30)

    if gameStarted then
        -- Draw player
        player:draw()
    
        -- Draw background
        background:draw()
    else
        love.graphics.clear()
        
        -- Draw home screen
        love.graphics.draw(homescreen, 0, 0)
    end
end