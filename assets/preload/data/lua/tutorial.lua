function start(song) -- copied from github, thanks kadedev. idoiots who don't know modhcarts, use this
    spinLength = 0
end


function update(elapsed)

    if difficulty == 2 and curStep > 400 then
        if spinLength < 32 then
            spinLength = spinLength + 0.2
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7,1 do
            local receptor = _G['receptor_'..i]
            receptor.angle = (spinLength / 7) * -math.sin((currentBeat + i*0.25) * math.pi)
	    receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*0.25) * math.pi)
	    receptor.y = receptor.defaultY + spinLength * math.cos((currentBeat + i*0.25) * math.pi)
        end
    end
end

function playerTwoTurn()
    camGame:tweenZoom(1.3,(crochet * 4) / 1000)
end

function playerOneTurn()
    camGame:tweenZoom(1,(crochet * 4) / 1000)
end