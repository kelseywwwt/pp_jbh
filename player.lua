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
    self.height = self.image:getHeight()

    isFlying = false
end

function Player:update(dt, gameStarted)
    -- Stop from going off-screen
    local window_width = love.graphics.getWidth()
    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end

    -- Space = start game = start flying
    if gameStarted and love.keyboard.isDown("space") then
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
            isFlying = false
            self.y = -850 * 6
            gameWin = true
        end
    else
        self.image = self.default
    end
end

function Player:draw()
    love.graphics.translate(0, -player.y + 650)
    
    love.graphics.draw(self.image, self.x, self.y)
end

function Player:reset()
    self.x = 245 
    self.y = 650 
    self.image = self.default
    isFlying = false
end