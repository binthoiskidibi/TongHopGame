local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=140376029820360"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

repeat wait() until game:IsLoaded()

local success, Fluent = pcall(function()
    return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end)

if not success then
    warn("❌ Không thể tải Fluent UI:", Fluent)
    return
end

local Window = Fluent:CreateWindow({
    Title = "Script Tổng hợp của Cathub",
    SubTitle = "Grow A Garden",
    TabWidth = 157,
    Size = UDim2.fromOffset(525, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})

local Tabs = {
    Main0 = Window:AddTab({ Title = "Thông Tin" }),
    Main1 = Window:AddTab({ Title = "Script Farm" }),
    Main2 = Window:AddTab({ Title = "Script Kaitun" }),
}

Tabs.Main0:AddButton({
    Title = "Discord",
    Description = "Cathub Community",
    Callback = function()
        setclipboard("https://discord.gg/Dn5dr5W2")
    end
})

Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "Cathub",
    Callback = function()
        setclipboard("https://www.youtube.com/@CathubScript")
    end
})

local function safeLoad(url)
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not ok then
        warn("❌ Lỗi khi tải script từ:", url, "\nLỗi:", err)
    end
end

Tabs.Main1:AddButton({
    Title = "Nolag",
    Description = "",
    Callback = function()
        local ok, err = pcall(function()
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/LoaderV1.lua"))()
        end)
        if not ok then
            warn("❌ Lỗi tải NoLag script:", err)
        end
    end 
})

Tabs.Main1:AddButton({
    Title = "Vxeze hub",
    Description = "",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubMain")
    end
})

Tabs.Main1:AddButton({
    Title = "Lunor Hub",
    Description = "",
    Callback = function()
        safeLoad("https://lunor.dev/loader")
    end
})

Tabs.Main1:AddButton({
    Title = "Blue X Hub",
    Description = "",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/GrowaGarden.luau")
    end
})

Tabs.Main1:AddButton({
    Title = "Cypher hub",
    Description = "",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/GRPGaming/Key-System/refs/heads/Xycer-Hub-Script/GAG3")
    end
})

Tabs.Main1:AddButton({
    Title = "PhantomFlux",
    Description = "",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/sudaisontopxd/PanScriptXSudaisScript/refs/heads/main/PhantFluxReal.lua")
    end
})

Tabs.Main2:AddButton({
    Title = "Lion Hub",
    Description = "",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/binthoiskidibi/LionGrowKaitun/refs/heads/main/Kaitun.lua")
    end
})
