Boost = Object:extend()

function Boost:new()
    self.image = love.graphics.newImage("img/star.png")
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    stars = {}
    for i=1,5 do 
        table.insert(stars,
            {
                x = love.math.random(0, 550),
                y = love.math.random(0, -850 * 5),
                image = self.image
            }
        )
    end
end

function Boost:update(dt)
end

function Boost:draw()
    for i,v in ipairs(stars) do
        love.graphics.draw(v.image, v.x, v.y)
    end
end    
