function love.load()
    love.window.setMode(550, 850) -- Vertical window
    love.graphics.setBackgroundColor(30/255, 28/255, 72/255) -- BG color to dark blue

    Object = require "classic"
    require "player"

    -- BG Stars
    bgStars = {}
    for i=1,25 do 
        table.insert(bgStars,
            {
                x = love.math.random(0, 550),
                y = love.math.random(0, 700),
                image = love.graphics.newImage("img/bgStar.png")
            }
        )
    end

    player = Player()
end

function love.update(dt)    
    player:update(dt)
end

function love.draw()
    player:draw()

    -- Draw BG Stars randomly
    for i, v in ipairs(bgStars) do 
        love.graphics.draw(v.image, v.x, v.y) 
    end
end