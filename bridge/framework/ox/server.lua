if GetResourceState('ox_core') ~= 'started' then return end
CreateThread(function() lib.load('@ox_core.imports.server') end)

local framework = {}

framework.getPlayerName = function(playerId)
    local player = Ox.GetPlayer(playerId)

	if player and player.charId then
		return player.firstName .. ' ' .. player.lastName
	end

	return GetPlayerName(playerId)
end