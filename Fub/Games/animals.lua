--[[scr = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClientModules.Coroutines['Animals - Client']
table.foreach(getsenv(scr),print)

RemoteEvent:FireServer(
	"Animal Hit",
	"25636"
)
--]]






local Event = game:GetService("ReplicatedStorage").RemoteEvent

local p2_hahanigger = _G.tbl or false;
spawn(function()
    for i,v in pairs(getgc()) do
    if not p2_hahanigger then
        if type(v) == 'function' then
            for up,value in pairs(debug.getupvalues(v)) do
                if type(value) == 'table' then
                    if rawget(value,'animalStats') and rawget(value,'animalModels') then
                        p2_hahanigger = value
                        return print('Found',p2_hahanigger)
                    end
                end
            end
        elseif type(v) == 'table' then
            if rawget(v,'animalStats') and rawget(v,'animalModels') then
                p2_hahanigger = v
                return print('Found',p2_hahanigger)
            end
        end
    else
        return
    end
end end)
repeat wait() until p2_hahanigger
yes = p2_hahanigger
tbl(yes,false,'Animal Functions Hidden')
print(yes.animalSelected)
game:GetService'RunService'.RenderStepped:connect(function()
    if yes.animalSelected then
        Event:FireServer('Animal Hit',yes.animalSelected)
    end
end)
