Background = Object:extend()

function Background:new()
        -- BG Stars
        bgStars = {}
        for i=1,50 do 
            table.insert(bgStars,
                {
                    x = love.math.random(0, 550),
                    y = love.math.random(0, -850 * 7),
                    image = love.graphics.newImage("img/bgStar.png")
                }
            )
        end
    
        -- BG Desert (start point)
        desert = love.graphics.newImage("img/desert.png")
    
        -- Planets/checkpoints
        planet = {
            six = love.graphics.newImage("img/planetSix.png")
        }    
end

function Background:draw()
    -- Draw BG Stars randomly
    for i,v in ipairs(bgStars) do 
        love.graphics.draw(v.image, v.x, v.y) 
    end

    -- Draw BG Desert ground for starting point
    love.graphics.draw(desert, -1, 750)

    -- Draw planet 6
    love.graphics.draw(planet.six, -245, -5200)
end