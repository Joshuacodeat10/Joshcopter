--[[
    TitleScreenState Class
    
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The TitleScreenState is the starting screen of the game, shown on startup. It should
    display "Press Enter" and also our highest score.
]]

TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:init()
    -- nothing
end

function TitleScreenState:update(dt)
    if love.keyboard.wasPressed('space') or love.mouse.wasPressed(1) then
        gStateMachine:change('countdown')
    end
end

function TitleScreenState:render()
    love.graphics.setColor(128, 64, 64)
    love.graphics.setFont(flappyFont)
    love.graphics.printf("JoshCopter", 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Tap to Start the game', 0, 100, VIRTUAL_WIDTH, 'center')
end