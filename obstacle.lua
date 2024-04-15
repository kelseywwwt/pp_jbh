Obstacle = Object:extend()

function Obstacle:new()
    self.image = love.graphics.newImage("img/asteroid.png")
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    asteroids = {}
    for i=1,100 do 
        table.insert(asteroids,
            {
                x = love.math.random(0, windowWidth),
                y = love.math.random(0, -windowHeight * 100),
                appear = 700,
                speed = love.math.random(100, 200),
                image = self.image
            }
        )
    end
end

function Obstacle:draw()
    for i,v in ipairs(asteroids) do
        love.graphics.draw(v.image, v.x, v.y)
    end
end    

function Obstacle:reset()
    for i,v in ipairs(asteroids) do
        table.remove(asteroids, i)
    end

    Obstacle:new()
end