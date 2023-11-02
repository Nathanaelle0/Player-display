minetest.register_chatcommand("online", {
    params = "",
    description = "Affiche les Joueurs connectée",
    func = function(name, param)

        local players = minetest.get_connected_players()
        local player_names = {}

        for _, player in pairs(players) do
            table.insert(player_names, player:get_player_name())
        end

        minetest.chat_send_player(name, "Joueurs connectés : " .. table.concat(player_names, ", "))
    end,
})
