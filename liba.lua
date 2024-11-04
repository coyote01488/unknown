-- @Region: Script Preload

Script_Preload = { };

Script_Preload.Run = function()
    if (_G.Skylight_Universal_Loaded) then
        script:Destroy();
    
        return;
    else
        setthreadidentity(7);
    end;
    
    _G.Skylight_Universal_Loaded = true;

    return;
end;

Script_Preload.Run();

-- @Region: Script Libraries

Script_Libraries = { };

Script_Libraries.GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/coyote01488/unknown/refs/heads/main/uilib.lua"))();

-- @Region: Game Services

Game_Services = { };

Game_Services.Players = cloneref(game:GetService("Players"));

Game_Services.Core_Gui = cloneref(game:GetService("CoreGui"));

Game_Services.Run_Service = cloneref(game:GetService("RunService"));

Game_Services.Http_Service = cloneref(game:GetService("HttpService"));

Game_Services.User_Input_Service = cloneref(game:GetService("UserInputService"));

Game_Services.Collection_Service = cloneref(game:GetService("CollectionService"));

Game_Services.Context_Action_Service = cloneref(game:GetService("ContextActionService"));

-- @Region: Local Data

Local_Data = { };

Local_Data.Active = function()
    if (Local_Data.Player and Local_Data.Character and Local_Data.Humanoid and Local_Data.Root_Part) then
        return true;
    else
        return false;
    end;
end;

Local_Data.Update = function()
    if (Local_Data.Player and Local_Data.Character and Local_Data.Humanoid and Local_Data.Root_Part) then
        return;
    end;

    Local_Data.Player = Game_Services.Players.LocalPlayer;

    if (Local_Data.Player and Local_Data.Player.Character) then
        Local_Data.Character = Local_Data.Player.Character;

        if (Local_Data.Player and Local_Data.Character and Local_Data.Character:FindFirstChild("Humanoid")) then
            Local_Data.Humanoid = Local_Data.Character:FindFirstChild("Humanoid");
        end;

        if (Local_Data.Player and Local_Data.Character and Local_Data.Character:FindFirstChild("HumanoidRootPart")) then
            Local_Data.Root_Part = Local_Data.Character:FindFirstChild("HumanoidRootPart");
        end;
    end;
end;

-- @Region: Script Windows

Script_Windows = { };

Script_Windows.Main = Script_Libraries.GUI:Window({ Name = "Skylight [Universal]", Enabled = true });

Script_Windows.Keybind_List = Script_Windows.Main:KeybindList({ Size = UDim2.new(0, 180, 0, 24), Enabled = true });

-- @Region: Script Functions

Script_Functions = { };

Script_Functions.Speedhack_Data = { };

Script_Functions.Speedhack = function(Value)
    if (not Value) then
        if (Script_Functions.Speedhack_Data.Connection) then
            Script_Functions.Speedhack_Data.Connection:Disconnect();

            Script_Functions.Speedhack_Data.Connection = nil;
        end;

        if (Script_Functions.Speedhack_Data.Velocity) then
            Script_Functions.Speedhack_Data.Velocity:Destroy();

            Script_Functions.Speedhack_Data.Velocity = nil;
        end;

        return;
    end;

    Script_Functions.Speedhack_Data.Connection = Game_Services.Run_Service.RenderStepped:Connect(function()
        if (Local_Data.Active()) then
            if (Script_Windows.Main.Flags["Flyhack"]) then
                if (Script_Functions.Speedhack_Data.Velocity) then
                    Script_Functions.Speedhack_Data.Velocity:Destroy();
        
                    Script_Functions.Speedhack_Data.Velocity = nil;
                end;

                return;
            end;

            if (not Script_Functions.Speedhack_Data.Velocity) then
                Script_Functions.Speedhack_Data.Velocity = Instance.new("BodyVelocity");
    
                Script_Functions.Speedhack_Data.Velocity.Parent = Local_Data.Root_Part;

                Script_Functions.Speedhack_Data.Velocity.MaxForce = Vector3.new(math.huge, 0, math.huge);
            else
                if (not Game_Services.Collection_Service:HasTag(Script_Functions.Speedhack_Data.Velocity, "AllowedBM")) then
                    Game_Services.Collection_Service:AddTag(Script_Functions.Speedhack_Data.Velocity, "AllowedBM");
                end;

                Script_Functions.Speedhack_Data.Velocity.Velocity = (Local_Data.Humanoid.MoveDirection.Magnitude ~= 0 and Local_Data.Humanoid.MoveDirection or gethiddenproperty(Local_Data.Humanoid, "WalkDirection")) * Script_Windows.Main.Flags["Speedhack_Value"];
            end;
        end;
    end);
end;

Script_Functions.Infinite_Jump_Data = { };

Script_Functions.Infinite_Jump = function(Value)
    if (not Value) then
        if (Script_Functions.Infinite_Jump_Data.Connection) then
            Script_Functions.Infinite_Jump_Data.Connection:Disconnect();

            Script_Functions.Infinite_Jump_Data.Connection = nil;
        end;

        return;
    end;

    Script_Functions.Infinite_Jump_Data.Connection = Game_Services.Run_Service.RenderStepped:Connect(function()
        if (Local_Data.Active()) then
            if (Game_Services.User_Input_Service:IsKeyDown(Enum.KeyCode.Space)) then
                Local_Data.Root_Part.Velocity = Vector3.new(Local_Data.Root_Part.Velocity.X, Script_Windows.Main.Flags["Infinite_Jump_Value"], Local_Data.Root_Part.Velocity.Z);
            end;
        end;
    end);
end;

Script_Functions.No_Collision_Data = { };

Script_Functions.No_Collision = function(Value)
    if (not Value) then
        if (Script_Functions.No_Collision_Data.Connection) then
            Script_Functions.No_Collision_Data.Connection:Disconnect();

            Script_Functions.No_Collision_Data.Connection = nil;
        end;

        if (Local_Data.Active()) then
            Local_Data.Humanoid:ChangeState("Physics");

            task.wait();

            Local_Data.Humanoid:ChangeState("RunningNoPhysics");
        end;

        return;
    end;

    Script_Functions.No_Collision_Data.Connection = Game_Services.Run_Service.RenderStepped:Connect(function()
        if (Local_Data.Active()) then
            for _, Part in pairs(Local_Data.Character:GetDescendants()) do
                if (Part:IsA("Part") or Part:IsA("BasePart")) then
                    Part.CanCollide = false;
                end;
            end;
        end;
    end);
end;

Script_Functions.Keybind_List_Data = { };

Script_Functions.Keybind_List_Data.List = { };

Script_Functions.Keybind_List = function(Value)
    if (not Value) then
        if (Script_Functions.Keybind_List_Data.Connection) then
            Script_Functions.Keybind_List_Data.Connection:Disconnect();

            Script_Functions.Keybind_List_Data.Connection = nil;
        end;

        Script_Windows.Keybind_List.Enabled = false;

        return;
    end;

    Script_Functions.Keybind_List_Data.Connection = Game_Services.Run_Service.RenderStepped:Connect(function()
        if (_G.Bracket_GUID) then
            if (Script_Functions.Keybind_List_Data.Element) then
                for _, Element in pairs(Script_Functions.Keybind_List_Data.Element:GetChildren()) do
                    if (Element.Name == "KeybindMimic" and Element.Visible) then
                        table.insert(Script_Functions.Keybind_List_Data.List, Element);
                    end;
                end;
    
                Script_Windows.Keybind_List.Size = UDim2.new(0, 180, 0, 24 + (18 * (#Script_Functions.Keybind_List_Data.List)));
    
                Script_Functions.Keybind_List_Data.List = { };
            else
                Script_Functions.Keybind_List_Data.Element = Game_Services.Core_Gui:FindFirstChild("Bracket " .. _G.Bracket_GUID):FindFirstChild("KeybindList"):FindFirstChild("BindContainer");
            end;
        end;
    end);

    Script_Windows.Keybind_List.Enabled = true;
end;

Script_Functions.Menu_Open_Data = { };

Script_Functions.Menu_Open = function(Value)
    Script_Windows.Main.Enabled = Value;
end;

Script_Functions.Initialize_Data = { };

Script_Functions.Initialize = function()
    Script_Functions.Speedhack(Script_Windows.Main.Flags["Speedhack"]);

    Script_Functions.Infinite_Jump(Script_Windows.Main.Flags["Infinite_Jump"]);

    Script_Functions.No_Collision(Script_Windows.Main.Flags["No_Collision"]);

    Script_Functions.Keybind_List(Script_Windows.Main.Flags["Keybind_List"]);

    Script_Functions.Menu_Open(Script_Windows.Main.Flags["Menu_Open"]);
end;

-- @Region: Script Menu

Script_Menu = { };

Script_Menu.Tabs = { };

Script_Menu.Sections = { };

Script_Menu.Elements = { };

Script_Menu.Initialize = function()
    do -- @Sub-Region: Tabs
        Script_Menu.Tabs.Global = Script_Windows.Main:Tab({ Name = "Global" });

        Script_Menu.Tabs.Settings = Script_Windows.Main:Tab({ Name = "Settings" });
    end;

    do -- @Sub-Region: Sections
        Script_Menu.Sections.Global_Character = Script_Menu.Tabs.Global:Section({ Name = "Character" });

        Script_Menu.Sections.Settings_Configs = Script_Menu.Tabs.Settings:AddConfigSection("SkylightUniversal");
    
        Script_Menu.Sections.Settings_Misc = Script_Menu.Tabs.Settings:Section({ Name = "Misc" });
    end;

    do -- @Sub-Region: Elements
        Script_Menu.Elements.Speedhack = Script_Menu.Sections.Global_Character:Toggle({ Name = "Speedhack", Flag = "Speedhack", Callback = Script_Functions.Speedhack });

        Script_Menu.Elements.Speedhack_Keybind = Script_Menu.Elements.Speedhack:Keybind({ Name = "Speedhack Keybind", Flag = "Speedhack_Keybind" });
    
        Script_Menu.Elements.Speedhack_Value = Script_Menu.Sections.Global_Character:Slider({ Name = "Speed", Flag = "Speedhack_Value", Slim = true, Min = 0, Max = 300, Value = 200 });
    
        Script_Menu.Elements.Infinite_Jump = Script_Menu.Sections.Global_Character:Toggle({ Name = "Infinite Jump", Flag = "Infinite_Jump", Callback = Script_Functions.Infinite_Jump });
    
        Script_Menu.Elements.Infinite_Jump_Keybind = Script_Menu.Elements.Infinite_Jump:Keybind({ Name = "Infinite Jump Keybind", Flag = "Infinite_Jump_Keybind" });
    
        Script_Menu.Elements.Infinite_Jump_Value = Script_Menu.Sections.Global_Character:Slider({ Name = "Height", Flag = "Infinite_Jump_Value", Slim = true, Min = 0, Max = 200, Value = 100 });
    
        Script_Menu.Elements.No_Collision = Script_Menu.Sections.Global_Character:Toggle({ Name = "No Collision", Flag = "No_Collision", Callback = Script_Functions.No_Collision });
    
        Script_Menu.Elements.No_Collision_Keybind = Script_Menu.Elements.No_Collision:Keybind({ Name = "No Collision Keybind", Flag = "No_Collision_Keybind" });
    
        Script_Menu.Elements.Menu_Open = Script_Menu.Sections.Settings_Misc:Toggle({ Name = "Menu Open", Flag = "Menu_Open", Value = Script_Windows.Main.Enabled, Callback = Script_Functions.Menu_Open });
    
        Script_Menu.Elements.Menu_Open_Keybind = Script_Menu.Elements.Menu_Open:Keybind({ Name = "Menu Open Keybind", Flag = "Menu_Open_Keybind", Value = "End", IgnoreList = true });
    
        Script_Menu.Elements.Keybind_List = Script_Menu.Sections.Settings_Misc:Toggle({ Name = "Keybind List", Flag = "Keybind_List", Value = Script_Windows.Keybind_List.Enabled, Callback = Script_Functions.Keybind_List });
    
        Script_Menu.Elements.Keybind_List_Keybind = Script_Menu.Elements.Keybind_List:Keybind({ Name = "Keybind List Keybind", Flag = "Keybind_List_Keybind", IgnoreList = true });
    end;
end;

-- @Region: Script Connections

Script_Connections = { };

Script_Connections.Local_Data_Update = Game_Services.Run_Service.RenderStepped:Connect(Local_Data.Update);

-- @Region: Script End

Script_End = { };

Script_End.Initialize = function()
    Script_Menu.Initialize();

    Script_Functions.Initialize();
end;

Script_End.Initialize();