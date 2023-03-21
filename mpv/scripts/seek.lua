function seek_to_percentage(percentage)
    local duration = mp.get_property_number("duration")
    if not duration then
        return
    end
    local position = duration * percentage / 100
    mp.commandv("seek", position, "absolute")
end

mp.add_key_binding("1", "seek_10", function() seek_to_percentage(10) end)
mp.add_key_binding("2", "seek_20", function() seek_to_percentage(20) end)
mp.add_key_binding("3", "seek_30", function() seek_to_percentage(30) end)
mp.add_key_binding("4", "seek_40", function() seek_to_percentage(40) end)
mp.add_key_binding("5", "seek_50", function() seek_to_percentage(50) end)
mp.add_key_binding("6", "seek_60", function() seek_to_percentage(60) end)
mp.add_key_binding("7", "seek_70", function() seek_to_percentage(70) end)
mp.add_key_binding("8", "seek_80", function() seek_to_percentage(80) end)
mp.add_key_binding("9", "seek_90", function() seek_to_percentage(90) end)

