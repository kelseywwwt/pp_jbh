Player = Object:extend()

function Player:new()
    -- Player's different modes: default(standing) and flying
    self.default = love.graphics.newImage("img/petitPrince1.png")
    self.flying = love.graphics.newImage("img/petitPrince2.png")
    self.image = self.default

    self.x = 245
    self.y = 650
    self.speed = 250 
    self.width = self.image:getWidth()
end

function Player:update(dt)
    -- Stop from going off-screen
    local window_width = love.graphics.getWidth()
    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end


    -- Space = start game = start flying
    if love.keyboard.isDown("space") then
        isFlying = true
    end

    if isFlying then
        self.image = self.flying
        self.y = self.y - self.speed * dt
        
        -- Player directions: left and right only if game starts
        if love.keyboard.isDown("left") then
            self.x = self.x - self.speed * dt
        elseif love.keyboard.isDown("right") then
            self.x = self.x + self.speed * dt
        end

        -- Stop flying at the end of lvl
        if self.y < -850 * 6 then
            self.image = self.default
        end

    else
        self.image = self.default
    end
end

function Player:draw()
    love.graphics.translate(0, -player.y + 650)
    
    love.graphics.draw(self.image, self.x, self.y)
end