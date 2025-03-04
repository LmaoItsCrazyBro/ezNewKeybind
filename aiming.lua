if not getgenv().MTXClient_Settings then
   getgenv().MTXClient_Settings = {
      ["Aim"] = {["AimPart"] = "Head", ["AimlockKey"] = "c", ["AimRadius"] = 35, ["LookAt"] = true},
      ["Fov"] = {
         ["Enabled"] = true,
         ["Fov_Radius"] = 70,
         ["insidefov_Visible"] = true,
         ["insidefov_Color"] = Color3.fromRGB(105, 0, 255),
         ["insidefov_transparency"] = 0.3,
         ["outsidefov_Visible"] = true,
         ["outsidefov_Color"] = Color3.fromRGB(105, 0, 255),
         ["outsidefov_transparency"] = 1
      },
      ["ClientFly"] = {["Enabled"] = false, ["Keybind"] = Enum.KeyCode.X, ["Speed"] = 25},
      ["Speed"] = {["Enabled"] = false, ["Keybind"] = Enum.KeyCode.Z, ["amount"] = 20},
      ["Verifications"] = {
         ["ThirdPerson"] = true,
         ["FirstPerson"] = true,
         ["TeamCheck"] = false,
         ["K_O"] = true,
         ["Grabing"] = true
      },
      ["Utility"] = {["NoSlow"] = true, ["AntiGroundShots"] = true, ["Notifications"] = true},
      ["Predict"] = {
         ["PredictMovement"] = false,
         ["PredictionVelocity"] = 7,
         ["AirPrediction"] = false,
         ["AirPredictionValue"] = 0.14500
      }
   }
end
local a = getgenv().MTXClient_Settings
getgenv().AimPart = a.Aim.AimPart
getgenv().AimlockKey = a.Aim.AimlockKey
getgenv().AimRadius = a.Aim.AimRadius
getgenv().LookAt = a.Aim.LookAt
getgenv().ThirdPerson = a.Verifications.ThirdPerson
getgenv().FirstPerson = a.Verifications.FirstPerson
getgenv().TeamCheck = a.Verifications.TeamCheck
getgenv().KOValue = a.Verifications.K_O
getgenv().Grabing = a.Verifications.Grabing
getgenv().NoSlow = a.Utility.NoSlow
getgenv().AntiGroundShots = a.Utility.AntiGroundShots
getgenv().Notifications = a.Utility.Notifications
getgenv().PredictMovement = a.Predict.PredictMovement
getgenv().PredictionVelocity = a.Predict.PredictionVelocity
getgenv().AirPrediction = a.Predict.AirPrediction
getgenv().AirPredictionValue = a.Predict.AirPredictionValue
local cloneref = cloneref or function(...)
   return ...
end
local b = cloneref(game:GetService("Players"))
local c = cloneref(game:GetService("UserInputService"))
local d = cloneref(game:GetService("RunService"))
local e = cloneref(game:GetService("StarterGui"))
local f = cloneref(game:GetService("ReplicatedStorage"))
local g = cloneref(game:GetService("TweenService"))
local h = cloneref(game:GetService("Workspace"))
local i = b.LocalPlayer
local j = i:GetMouse()
local k = workspace.CurrentCamera
local l = CFrame.new
local m = Ray.new
local n = Vector3.new
local o = Vector2.new
local p = 0
local q = true
local r = false
local s = false
local t
local u = {}
local v = {}
local w = {}
local x = {}
local y = function()
   local z = i:WaitForChild("PlayerGui")
   local A = Instance.new("ScreenGui")
   A.Name = "IntroScreen"
   A.Parent = z
   local B = Instance.new("Frame")
   B.Name = "IntroFrame"
   B.Parent = A
   B.Size = UDim2.new(1, 0, 1, 0)
   B.BackgroundTransparency = 1
   local C = Instance.new("ImageLabel")
   C.Name = "IntroImage"
   C.Parent = B
   C.Size = UDim2.new(0.3, 0, 0.3, 0)
   C.Position = UDim2.new(0.35, 0, 0.35, 0)
   C.Image = "rbxassetid://103014536873025"
   C.BackgroundTransparency = 1
   C.ImageTransparency = 1
   C.ImageColor3 = Color3.fromRGB(105, 0, 255)
   local D = Instance.new("Sound")
   D.Name = "IntroSound"
   D.Parent = B
   D.SoundId = "rbxassetid://7556198569"
   D.Volume = 10
   D:Play()
   local E = game:GetService("TweenService")
   local F = Instance.new("BlurEffect")
   F.Parent = game.Lighting
   F.Size = 24
   local G = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
   local H = E:Create(C, G, {ImageTransparency = 0.5})
   local I = E:Create(C, G, {ImageTransparency = 1})
   local J = E:Create(F, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = 0})
   H:Play()
   H.Completed:Wait()
   task.wait(0.5)
   I:Play()
   I.Completed:Wait()
   J:Play()
   J.Completed:Wait()
   F:Destroy()
   A:Destroy()
end
y()
local K = function(L)
   if not a.Utility.Notifications then
      return
   end
   local L = L or {}
   local M = {}
   local N = {
      Title = L.Title or L.title or "Notification",
      Description = L.Description or L.description or "Notification Description",
      Duration = L.Duration or L.duration or 3
   }
   local O = #u * 55
   local P = Instance.new("Frame", gethui())
   P.BorderSizePixel = 0
   P.BackgroundColor3 = Color3.fromRGB(22, 23, 26)
   P.AnchorPoint = Vector2.new(1, 1)
   P.ClipsDescendants = true
   P.Size = UDim2.new(0, 300, 0, 50)
   P.Position = UDim2.new(1, -5, 1, -5 - O)
   P.BorderColor3 = Color3.fromRGB(0, 0, 0)
   P.Name = "Notification"
   local Q = Instance.new("UICorner", P)
   Q.CornerRadius = UDim.new(0, 6)
   local R = Instance.new("Frame", P)
   R.BorderSizePixel = 0
   R.BackgroundColor3 = Color3.fromRGB(105, 0, 255)
   R.AnchorPoint = Vector2.new(0, 1)
   R.Size = UDim2.new(0.95, 0, 0, 5)
   R.Position = UDim2.new(0, 8, 1, -2)
   R.BorderColor3 = Color3.fromRGB(0, 0, 0)
   R.Name = "Timer"
   local S = Instance.new("UICorner", R)
   S.CornerRadius = UDim.new(1, 0)
   local T = Instance.new("Frame", P)
   T.BorderSizePixel = 0
   T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   T.Size = UDim2.new(1, 0, 1, -10)
   T.BorderColor3 = Color3.fromRGB(0, 0, 0)
   T.Name = "Content"
   T.BackgroundTransparency = 1
   local U = Instance.new("TextLabel", T)
   U.BorderSizePixel = 0
   U.TextXAlignment = Enum.TextXAlignment.Left
   U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   U.TextSize = 15
   U.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
   U.TextColor3 = Color3.fromRGB(231, 231, 231)
   U.BackgroundTransparency = 1
   U.Size = UDim2.new(1, 0, 0.5, 0)
   U.BorderColor3 = Color3.fromRGB(0, 0, 0)
   U.Text = N.Title
   U.Name = "Title"
   local V = Instance.new("UIPadding", U)
   V.PaddingLeft = UDim.new(0, 14)
   local W = Instance.new("TextLabel", T)
   W.BorderSizePixel = 0
   W.TextXAlignment = Enum.TextXAlignment.Left
   W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   W.TextSize = 13
   W.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
   W.TextColor3 = Color3.fromRGB(131, 131, 131)
   W.BackgroundTransparency = 1
   W.AnchorPoint = Vector2.new(0, 1)
   W.Size = UDim2.new(1, 0, 0.5, 0)
   W.BorderColor3 = Color3.fromRGB(0, 0, 0)
   W.Text = N.Description
   W.Name = "Description"
   W.Position = UDim2.new(0, 0, 1, 0)
   local X = Instance.new("UIPadding", W)
   X.PaddingLeft = UDim.new(0, 14)
   local function Y(Z, _, G)
   if Z:IsA("TextLabel") then
      g:Create(Z, G, {TextTransparency = _}):Play()
   elseif Z:IsA("Frame") and Z ~= P then
      g:Create(Z, G, {BackgroundTransparency = _}):Play()
   elseif Z:IsA("ImageLabel") or Z:IsA("ImageButton") then
      g:Create(Z, G, {ImageTransparency = _}):Play()
   end
   end
   function M:Init()
      local a0 = UDim2.new(0, 300, 0, 50)
      local G = TweenInfo.new(0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0)
      local a1 = g:Create(P, G, {Size = a0})
      task.wait(0.5)
      a1:Play()
      a1.Completed:Connect(
         function()
            local a2 = TweenInfo.new(N.Duration, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
            local a3 = g:Create(R, a2, {Size = UDim2.new(0, 0, 0, 5)})
            a3:Play()
            a3.Completed:Connect(
               function()
                  local a4 = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
                  for a5, a6 in pairs(P:GetDescendants()) do
                     Y(a6, 1, a4)
                  end
                  local a7 = g:Create(P, a4, {BackgroundTransparency = 1})
                  a7:Play()
                  a7.Completed:Connect(
                     function()
                        for a8, a9 in ipairs(u) do
                           if a9 == P then
                              table.remove(u, a8)
                              break
                           end
                        end
                        P:Destroy()
                     end
                  )
               end
            )
         end
      )
   end
   table.insert(u, P)
   M:Init()
   return M
end
local aa = {}
do
   aa.new_connection = function(ab, ac)
      local ad = ab:Connect(ac)
      table.insert(w, ad)
      return ad
   end
   aa.remove_connection = function(ad)
      for a8, a6 in pairs(w) do
         if a6 == ad then
            w[a8] = nil
            a6:Disconnect()
         end
      end
   end
   aa.drawing_new = function(ab, ae)
      local af = Drawing.new(ab)
      for ag, ah in ae do
         af[ag] = ah
      end
      return af
   end
   aa.has_character = function(ai)
      return ai and ai.Character and ai.Character:FindFirstChildWhichIsA("Humanoid") and true or false
   end
end
x["assist_fov_outside"] = aa.drawing_new("Circle", {Visible = false, Color = Color3.fromRGB(105, 0, 255), ZIndex = 9e9})
x["assist_fov_inside"] =
   aa.drawing_new("Circle", {Visible = false, Filled = true, Color = Color3.fromRGB(105, 0, 255), ZIndex = 9e9})
getgenv().TargetCheck = function(aj)
   if not aj or not aj.Character then
      return false
   end
   local ak = aj.Character
   local al = ak:FindFirstChild("BodyEffects")
   local am = getgenv().KOValue and al and al:FindFirstChild("K.O") and al["K.O"].Value or false
   local an = getgenv().Grabing and ak:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
   return not (am or an)
end
getgenv().GetTargetInAir = function(ak)
   if ak and ak:FindFirstChildWhichIsA("Humanoid") then
      return ak.Humanoid.FloorMaterial == Enum.Material.Air
   end
   return false
end
getgenv().GetFalling = function(ao)
   if ao.Character and ao.Character:FindFirstChildWhichIsA("Humanoid") then
      return ao.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
   end
   return false
end
getgenv().GetNearestTarget = function()
   local ap = {}
   local aq = {}
   local ar = {}
   for a5, as in pairs(b:GetPlayers()) do
      if as ~= i then
         table.insert(ap, as)
      end
   end
   for a5, as in pairs(ap) do
      if as.Character then
         local at = as.Character:WaitForChild("Head")
         if at then
            local au = (at.Position - k.CFrame.p).Magnitude
            local av = m(k.CFrame.p, (j.Hit.p - k.CFrame.p).Unit * au)
            local a5, aw = h:FindPartOnRay(av, h)
            local ax = math.floor((aw - at.Position).Magnitude)
            aq[as.Name] = {distance = au, player = as, diff = ax}
            table.insert(ar, ax)
         end
      end
   end
   if #ar == 0 then
      return nil
   end
   local ay = math.min(unpack(ar))
   if ay > getgenv().AimRadius then
      return nil
   end
   for a5, az in pairs(aq) do
      if az.diff == ay then
         return az.player
      end
   end
   return nil
end
aa.new_connection(
   j.KeyDown,
   function(aA)
      if aA == AimlockKey and not t then
         pcall(
            function()
               if not r then
                  r = true
               end
               t = getgenv().GetNearestTarget()
               K({Title = "Notification", Description = "Target : " .. t.Name, Duration = 1})
            end
         )
      elseif aA == AimlockKey and t then
         t = nil
         r = false
         K({Title = "Notification", Description = "Target : nil", Duration = 1})
      end
   end
)
d.RenderStepped:Connect(
    function()
        local aB = (k.Focus.p - k.CFrame.p).Magnitude
        s = aB > 1 and getgenv().ThirdPerson or aB <= 1 and getgenv().FirstPerson
        if q and r and t and t.Character then
            local aC = t.Character:FindFirstChild(getgenv().AimPart)
            if aC and getgenv().TargetCheck(t) then
               local aD = aC.Position
               if getgenv().PredictMovement then
                  aD = aD + aC.Velocity / getgenv().PredictionVelocity
               end
               if getgenv().AntiGroundShots then
                  local aE = t.Character:FindFirstChild(aC)
                  if aE and aE.Velocity.Y < 0 then
                     aE.Velocity = Vector3.new(aE.Velocity.X, 0, aE.Velocity.Z)
                     aE.AssemblyLinearVelocity = Vector3.new(aE.Velocity.X, 0, aE.Velocity.Z)
                  end
               end
               if getgenv().GetTargetInAir(t.Character) and getgenv().AirPrediction then
                  aD = aD + aC.Velocity * getgenv().AirPredictionValue
               end
               if getgenv().LookAt and t and aa.has_character(t) then
               getgenv().HumanoidRootPart.CFrame =
                  CFrame.new(
                     getgenv().HumanoidRootPart.CFrame.Position,
                  Vector3.new(
                     t.Character:WaitForChild("HumanoidRootPart").CFrame.X,
                     getgenv().HumanoidRootPart.CFrame.Position.Y,
                     t.Character:WaitForChild("HumanoidRootPart").CFrame.Z
                  )
               )
               end
               k.CFrame = l(k.CFrame.p, aD)
            else
               t = nil
               r = false
               K({Title = "Notification", Description = "Target : Dead or Grabbed", Duration = 0.5})
            end
        end
    end
)
if not f:FindFirstChild("MainEvent") then
   aa.new_connection(
      c.InputBegan,
      function(aA)
         if aA.KeyCode == a.ClientFly.Keybind then
            a.ClientFly.Enabled = not a.ClientFly.Enabled
            local aF = not (not (a.ClientFly and a.ClientFly.Enabled))
            K({Title = "Notification", Description = "Client Fly : " .. tostring(aF), Duration = 1})
         elseif aA.KeyCode == Enum.KeyCode.V then
            for a8 = 1, 5 do
               f.MainEvent:FireServer("Stomp")
            end
            K({Title = "Notification", Description = "Stomping", Duration = 1})
         elseif aA.KeyCode == a.Speed.Keybind then
            a.Speed.Enabled = not a.Speed.Enabled
            local aG = not (not (a.Speed and a.Speed.Enabled))
            K({Title = "Notification", Description = "Speed : " .. tostring(aG), Duration = 1})
         end
      end
   )
else
   warn("MainEvent not found in current game.")
end
aa.new_connection(
   d.Heartbeat,
   function(aH)
      local aI = a.ClientFly.Enabled
      local aJ = a.ClientFly.Speed
      local aK = a.Speed.Enabled
      if aK and aa.has_character(i) then
         local aL = a.Speed.amount
         local aM = getgenv().HumanoidRootPart
         local aN = getgenv().Humanoid
         local aO = aL / 8
         aM.CFrame = aM.CFrame + aN.MoveDirection * aO
      end
      if aI and aa.has_character(i) then
         local aP = getgenv().Humanoid.MoveDirection
         local aQ = getgenv().HumanoidRootPart
         local aR =
            Vector3.new(
            0,
            c:IsKeyDown(Enum.KeyCode.Space) and aJ / 8 or c:IsKeyDown(Enum.KeyCode.LeftControl) and -aJ / 8 or 0,
            0
         )
         aQ.CFrame = aQ.CFrame + aP * aH * aJ * 10
         aQ.CFrame = aQ.CFrame + aR
         aQ.Velocity = aQ.Velocity * Vector3.new(1, 0, 1) + Vector3.new(0, 1.9, 0)
      end
   end
)
if getgenv().Character:FindFirstChild("BodyEffects") then
   aa.new_connection(
      d.Heartbeat,
      function()
         if getgenv().NoSlow and aa.has_character(i) then
            if getgenv().Character.BodyEffects.Reload.Value then
               getgenv().Character.BodyEffects.Reload.Value = false
            end
            local aS =
               getgenv().Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
               getgenv().Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") or
               getgenv().Character.BodyEffects.Movement:FindFirstChild("ReduceWalk")
            if aS then
               aS:Destroy()
            end
         end
      end
   )
else
   warn("BodyEffects not found in Character.")
end
wait()
aa.new_connection(
   d.RenderStepped,
   function()
      local aT = a.Fov.Enabled
      if aT then
         local aU = a.Fov.Fov_Radius * 3
         x.assist_fov_outside.Visible = a.Fov.outsidefov_Visible
         x.assist_fov_outside.Radius = aU
         x.assist_fov_outside.Color = a.Fov.outsidefov_Color
         x.assist_fov_outside.Transparency = a.Fov.outsidefov_transparency
         x.assist_fov_outside.Position = c:GetMouseLocation()
         x.assist_fov_inside.Visible = a.Fov.insidefov_Visible
         x.assist_fov_inside.Radius = aU
         x.assist_fov_inside.Color = a.Fov.insidefov_Color
         x.assist_fov_inside.Transparency = a.Fov.insidefov_transparency
         x.assist_fov_inside.Position = c:GetMouseLocation()
      else
         if x.assist_fov_inside then
            x.assist_fov_outside.Visible = false
            x.assist_fov_inside.Visible = false
         end
      end
   end
)
wait()
do
   if tick() - p > 1 and i.Character then
      p = tick()
      for a5, aV in pairs(i.Character:GetChildren()) do
         if aV:IsA("Script") and aV.Name ~= "Health" and aV.Name ~= "Sound" and aV:FindFirstChild("LocalScript") then
            aV:Destroy()
         end
      end
   end
end
