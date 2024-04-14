Obstacle = Object:extend()

function Obstacle:new()
    self.image = love.graphics.newImage("img/asteroid1.png")
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    asteroids = {}
    for i=1,5 do 
        table.insert(asteroids,
            {
                x = 600,
                y = love.math.random(0, -850 * 5),
                appear = love.math.random(400, 700),
                speed = love.math.random(100, 200),
                image = self.image
            }
        )
    end
end

function Obstacle:update(dt, player_y)
    for i,v in ipairs(asteroids) do
        if v.y > player_y - v.appear then
            v.x = v.x - v.speed * dt
        end
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