Boost = Object:extend()

function Boost:new()
    self.image = love.graphics.newImage("img/star.png")
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    stars = {}
    for i=1,10 do 
        table.insert(stars,
            {
                x = love.math.random(0, 510),
                y = love.math.random(0, -850 * 5),
                image = self.image
            }
        )
    end
end

function Boost:draw()
    for i,v in ipairs(stars) do
        love.graphics.draw(v.image, v.x, v.y)
    end
end    

function Boost:reset()
    for i,v in ipairs(stars) do
        table.remove(stars, i)
    end

    Boost:new()
end