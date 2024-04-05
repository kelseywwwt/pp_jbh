function love.load()
    love.window.setMode(550, 850) -- Vertical window
    love.graphics.setBackgroundColor(30/255, 28/255, 72/255) -- BG color to dark blue

    Object = require "classic"
    require "player"

    -- BG Stars
    bgStars = {}
    for i=1,50 do 
        table.insert(bgStars,
            {
                x = love.math.random(0, 550),
                y = love.math.random(0, -850 * 6),
                image = love.graphics.newImage("img/bgStar.png")
            }
        )
    end

    -- BG Desert (start point)
    desert = love.graphics.newImage("img/desert.png")

    player = Player()
end

function love.update(dt)    
    player:update(dt)
end

function love.draw()      
    -- Draw player
    player:draw()

    -- Background decorations --
    -- Draw BG Stars randomly
    for i, v in ipairs(bgStars) do 
        love.graphics.draw(v.image, v.x, v.y) 
    end
    
    -- Draw BG Desert ground for starting point
    love.graphics.draw(desert, -1, 750)
end