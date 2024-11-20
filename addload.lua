loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-GuiStealer-12751", true))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/gameprober-lua/main/gp.lua"))()

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Free-Hub-Watermark-18808"))()

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Chat-Bypasser-V4-dot-8-22727"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()

loadstring(game:HttpGet("https://x-ro.cc/modules/loadstring.lua"))()

local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")

loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
