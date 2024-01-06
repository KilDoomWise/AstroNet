local computer = require("computer")
local repo = "https://raw.githubusercontent.com/KilDoomWise/AstroNet/main"


computer.beep(1000, 0.3)
print("[LOG] Загружен FST Загрузчик!")
print("[LOG] Скачиваем некоторые файлы...")
os.execute("wget -f " .. repo .. "installer/gui.lua")
os.execute("wget -f " .. repo .. "installer/boot.lua")
print("[LOG] Booting up GUI...")
io.write("[WARNING] Данный компьютер перейдет в режим настройки, мы добавим наш загрузчик в автозагрузку. Вы согласны? [Y/n]: ")
local autostart_confirm = string.lower(io.read())

if autostart_confirm == "y" then
    print("[LOG] Попытка добавления в автозагрузку")
    local file = io.open("/home/.shrc", "w")

    if file then
        file:write("boot.lua")
        computer.shutdown(true)
        file:close()
    else
        print("Нет доступа к автозагрузке! Убедитесь что у вас есть права и вы установили OpenOS!")
    end

else
    print("[LOG] Отменяем...")
    os.execute("rm gui.lua")
    os.execute("rm boot.lua")
    os.execute("rm fst.lua")
    print("\n\nУстановка отменена! Возвращайтесь если надумаете =)")
    os.exit()
end