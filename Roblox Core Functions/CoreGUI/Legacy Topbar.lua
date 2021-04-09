topbar = game.CoreGui:WaitForChild("TopBar")
wait()
topbar:Destroy()
game:GetService("ScriptContext"):AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)