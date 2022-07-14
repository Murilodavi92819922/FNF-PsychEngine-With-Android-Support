function onUpdate(elapsed)
    songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
local currentBeat2 = (songPos/200)*(curBpm/200)
setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.7))
setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.7))

noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 250*math.cos((currentBeat2*0.7)*math.pi), 0.37)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 800*math.cos((currentBeat2*0.8)*math.pi), 0.38)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 250*math.cos((currentBeat2*0.7)*math.pi), 0.39)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 800*math.cos((currentBeat2*0.8)*math.pi), 0.36)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 200*math.cos((currentBeat2*0.7)*math.pi), 0.33)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 500*math.cos((currentBeat2*0.8)*math.pi), 0.34)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 200*math.cos((currentBeat2*0.7)*math.pi), 0.35)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 500*math.cos((currentBeat2*0.8)*math.pi), 0.36)
end