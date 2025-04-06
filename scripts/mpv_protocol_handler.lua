---@diagnostic disable
mp.add_hook("on_load", 50, function()
    local url = mp.get_property("path")

    if url:match("^mpv://") then
        local new_url = url:gsub("^mpv://", "https://")

        mp.commandv("loadfile", new_url)
    end
end)
