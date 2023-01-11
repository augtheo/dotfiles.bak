function get_files_in_directory(directory)
    local file_list = {}
    local handle = io.popen('find "'..directory..'" -maxdepth 1 -type f')
    for filename in handle:lines() do
        local file_info = {}
        file_info.name = filename
        file_info.is_dir = false
        table.insert(file_list, file_info)
    end
    handle:close()
    return file_list
end

function show_file_list(file_list)
    local text = ""
    for i, file_info in ipairs(file_list) do
        text = text .. file_info.name .. "\n"
    end
    mp.osd_message(text, 2)
end

function select_previous_file()
    current_index = current_index - 1
    if current_index < 1 then
        current_index = #file_list
    end
    mp.commandv("loadfile", file_list[current_index].name)
end

function select_next_file()
    current_index = current_index + 1
    if current_index > #file_list then
        current_index = 1
    end
    mp.commandv("loadfile", file_list[current_index].name)
end

directory = mp.get_property("working-directory")
--mp.osd_message(directory, 10)
file_list = get_files_in_directory(directory)
current_index = 0

mp.add_key_binding("Shift+UP", "previous_file", select_previous_file)
mp.add_key_binding("Shift+DOWN", "next_file", select_next_file)
mp.add_key_binding("Shift+l" , "show_list" ,  function()
    show_file_list(file_list)
end)

