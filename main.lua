function love.load()
    love.window.setMode(550, 850) -- Vertical window
    windowWidth = love.graphics.getWidth()
    windowHeight = love.graphics.getHeight()

    love.graphics.setBackgroundColor(30/255, 28/255, 72/255) -- BG color to dark blue

    song = love.audio.newSource("audio/song.mp3", "stream")
    song:setLooping(true)
    song:play()

    starSfx = love.audio.newSource("audio/starSfx.mp3", "static")
    asteroidSfx = love.audio.newSource("audio/asteroidSfx.mp3", "static")

    gameStarted = false
    gameOver = false
    gameWin = false
    startButton = { x = 200, y = 650, width = 150, height = 70 }
    winButton = { x = 200, y = 650, width = 150, height = 70 }
    restartButton = { x = 170, y = 650, width = 210, height = 70 }
    
    homeScreen = love.graphics.newImage("img/homeScreen.png")
    restartScreen = love.graphics.newImage("img/restartScreen.png")
    winScreen = love.graphics.newImage("img/winScreen.png")

    Object = require "classic"
    require "player"
    require "background"
    require "obstacle"
    require "boost"

    player = Player()
    background = Background()
    boost = Boost()
    obstacle = Obstacle()

    score = 0
end

function love.update(dt) 
    player:update(dt, gameStarted, windowWidth)
end

function love.draw()
    love.graphics.print("x: " .. player.x, 10, 10)
    love.graphics.print("y: " .. player.y, 10, 30)
    love.graphics.print("Score: " .. score, 490, 10)

    if gameStarted then
        -- Draw player
        player:draw()

        -- Draw background
        background:draw()

        -- Draw boosts
        boost:draw()
        for i,v in ipairs(stars) do
            if checkCollision(boost, v.x, v.y) then
                starSfx:play()
                table.remove(stars, i)
                score = score + 1
            end
        end

        -- Draw obstacles
        obstacle:draw()
        for i,v in ipairs(asteroids) do
            if checkCollision(obstacle, v.x, v.y) then 
                asteroidSfx:play()               
                gameOver = true
            end
        end
    else
        love.graphics.clear()
        
        -- Draw home screen
        love.graphics.draw(homeScreen, 0, 0)
    end

    if gameOver then
        gameReset()

        -- Draw restart screen
        love.graphics.draw(restartScreen, 0, 0)

        love.graphics.print("Score: " .. score, 245, 625)
    end

    if gameWin then
        gameReset()

        -- Draw win screen
        love.graphics.draw(winScreen, 0, player.y - (810 - player.height))

        love.graphics.print("Score: " .. score, 245, 625)

    end
end

function love.mousepressed(x, y, button)
    if button == 1 then 
        if not gameStarted then -- If game hasn't started yet
            if x >= startButton.x and x <= startButton.x + startButton.width and
               y >= startButton.y and y <= startButton.y + startButton.height then
                gameStarted = true
                score = 0
            end
        elseif gameOver then -- If game is over
            if x >= restartButton.x and x <= restartButton.x + restartButton.width and
               y >= restartButton.y and y <= restartButton.y + restartButton.height then
                
                -- Reset game state
                gameStarted = true
                gameOver = false
                score = 0
            end
        elseif gameWin then -- If game is won
            if x >= winButton.x and x <= winButton.x + winButton.width and
            y >= winButton.y and y <= winButton.y + winButton.height then
                
                -- Reset game state
                gameStarted = true
                gameWin = false
                score = 0
            end
        end
    end
end

function checkCollision(e, e_x, e_y)
    local player_left = player.x
    local player_right = player.x + player.width
    local player_top = player.y
    local player_bottom = player.y + player.height

    local e_left = e_x
    local e_right = e_x + e.width
    local e_top = e_y
    local e_bottom = e_y + e.height

    return player_right > e_left 
        and player_left < e_right 
        and player_bottom > e_top 
        and player_top < e_bottom
end

function gameReset() -- Reset all
    love.graphics.clear()
        
    player:reset()
    boost:reset()
    obstacle:reset()
end