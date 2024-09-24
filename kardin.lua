local DrRayLibrary = loadstring(gameHttpGet(httpsraw.githubusercontent.comAZYsGithubDrRay-UI-LibrarymainDrRay.lua))()
local window = DrRayLibraryLoad(Leaf hub, Default)

local tab = DrRayLibrary.newTab(Main, 4483345998)

tab.newButton(Death autofarm, Execute in lobby then join a singleplayer game (use mods for more knobs), function()
   
task.spawn(queue_on_teleport or syn and syn.queue_on_teleport, gameHttpGet(httpsraw.githubusercontent.comActualMasterOogwayScriptsmainDoorsDeath-Farm.lua))
end)

tab.newButton(crucifix anything, hold Q and left click on anything, function()
_G.Uses = 414141414141
_G.Range = 30
_G.OnAnything = true
_G.Fail = false
_G.Variant = Electric
loadstring(gameHttpGet('httpsraw.githubusercontent.comPenguinManiackCrucifixmainCrucifix.lua'))()
end)

tab.newButton(mspaint V2, Old goated doors script new update, function()
loadstring(gameHttpGet(httpsraw.githubusercontent.comnotpoiumspaintmainmain.lua))()
end)

tab.newButton(Kaiden shader, kaiden famous doors hacker lolcat friend shader script, function()
local Bloom = Instance.new(BloomEffect, game.Lighting)
Bloom.Intensity = 0.12
Bloom.Size = 9e9
Bloom.Threshold = 0.05

local DepthOfField = Instance.new(DepthOfFieldEffect, game.Lighting)
DepthOfField.FarIntensity = 0.3
DepthOfField.FocusDistance = 20
DepthOfField.InFocusRadius = 0
DepthOfField.NearIntensity = 0

local SunRays = Instance.new(SunRaysEffect, game.Lighting)
SunRays.Intensity = 0.1
SunRays.Spread = 0.8

local ColorCorrection = Instance.new(ColorCorrectionEffect, game.Lighting)
ColorCorrection.Brightness = 0.025
ColorCorrection.Contrast = 0.13
ColorCorrection.Saturation = 0.15

game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.fromRGB(35, 35, 45)
end)

tab.newButton(Grumble spawner, Spawns grumbles (they dont deal damage) click Q to spawm use the sword to dispawn them, function()
-- Q TO SPAWN

local Speed = 12

local Players = gameGetService(Players)
local RunService = gameGetService(RunService)
local Debris = gameGetService(Debris)
local UserInputService = gameGetService(UserInputService)

local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAddedWait()

local Sword = gameGetObjects(rbxassetid72674416931709)[1]

local Cache = gameGetObjects(rbxassetid96223289630255)[1]
local Cache2 = gameGetObjects(rbxassetid103869039972033)[1]

CacheDestroy()
Cache2Destroy()

Sword.Parent = Player.Backpack

task.spawn(function()
	local Tool = Sword
	local Handle = ToolWaitForChild(Handle)
	local Humanoid = Character.Humanoid
	local Torso = CharacterFindFirstChild(Torso) or CharacterFindFirstChild(HumanoidRootPart)

	local function Create(ty)
		return function(data)
			local obj = Instance.new(ty)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					obj[k] = v
				end
			end
			return obj
		end
	end

	local BaseUrl = rbxassetid

	local DamageValues = {
		BaseDamage = 5,
		SlashDamage = 10,
		LungeDamage = 30
	}

	local Animations = {
		R15Slash = 522635514,
		R15Lunge = 522638767
	}

	local Damage = DamageValues.BaseDamage

	local Grips = {
		Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
		Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
	}

	local Sounds = {
		Slash = HandleWaitForChild(SwordSlash),
		Lunge = HandleWaitForChild(SwordLunge),
		Unsheath = HandleWaitForChild(Unsheath)
	}

	local ToolEquipped = false

	Tool.Grip = Grips.Up
	Tool.Enabled = true

	local function IsTeamMate(Player1, Player2)
		return (Player1 and Player2 and not Player1.Neutral and not Player2.Neutral and Player1.TeamColor == Player2.TeamColor)
	end

	local function TagHumanoid(humanoid, player)
		local Creator_Tag = Instance.new(ObjectValue)
		Creator_Tag.Name = creator
		Creator_Tag.Value = player
		DebrisAddItem(Creator_Tag, 2)
		Creator_Tag.Parent = humanoid
	end

	local function UntagHumanoid(humanoid)
		for i, v in pairs(humanoidGetChildren()) do
			if vIsA(ObjectValue) and v.Name == creator then
				vDestroy()
			end
		end
	end

	local function CheckIfAlive()
		return (((Player and Player.Parent and Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health  0 and Torso and Torso.Parent) and true) or false)
	end

	local function Blow(Hit)
		if not Hit or not Hit.Parent or not CheckIfAlive() or not ToolEquipped then
			return
		end
		local RightArm = CharacterFindFirstChild(Right Arm) or CharacterFindFirstChild(RightHand)
		if not RightArm then
			return
		end
		local RightGrip = RightArmFindFirstChild(RightGrip)
		if not RightGrip or (RightGrip.Part0 ~= Handle and RightGrip.Part1 ~= Handle) then
			return
		end
		local character = Hit.Parent
		if character == Character then
			return
		end
		local humanoid = characterFindFirstChildOfClass(Humanoid)
		if not humanoid or humanoid.Health == 0 then
			return
		end
		local player = PlayersGetPlayerFromCharacter(character)
		if player and (player == Player or IsTeamMate(Player, player)) then
			return
		end
		UntagHumanoid(humanoid)
		TagHumanoid(humanoid, Player)
		humanoidTakeDamage(Damage)	
	end

	local function Attack()
		Damage = DamageValues.SlashDamage
		Sounds.SlashPlay()

		if Humanoid then
			if Humanoid.RigType == Enum.HumanoidRigType.R6 then
				local Anim = Instance.new(StringValue)
				Anim.Name = toolanim
				Anim.Value = Slash
				Anim.Parent = Tool
			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
				local Anim = ToolFindFirstChild(R15Slash)
				if Anim then
					local Track = HumanoidLoadAnimation(Anim)
					TrackPlay(0)
				end
			end
		end	
	end

	local function Lunge()
		Damage = DamageValues.LungeDamage

		Sounds.LungePlay()

		if Humanoid then
			if Humanoid.RigType == Enum.HumanoidRigType.R6 then
				local Anim = Instance.new(StringValue)
				Anim.Name = toolanim
				Anim.Value = Lunge
				Anim.Parent = Tool
			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
				local Anim = ToolFindFirstChild(R15Lunge)
				if Anim then
					local Track = HumanoidLoadAnimation(Anim)
					TrackPlay(0)
				end
			end
		end	

		wait(0.2)
		Tool.Grip = Grips.Out
		wait(0.6)
		Tool.Grip = Grips.Up

		Damage = DamageValues.SlashDamage
	end

	Tool.Enabled = true
	local LastAttack = 0

	local function Activated()
		if not Tool.Enabled or not ToolEquipped or not CheckIfAlive() then
			return
		end
		Tool.Enabled = false
		local Tick = RunService.Steppedwait()
		if (Tick - LastAttack  0.2) then
			Lunge()
		else
			Attack()
		end
		LastAttack = Tick
		Damage = DamageValues.BaseDamage
		local SlashAnim = (ToolFindFirstChild(R15Slash) or Create(Animation){
			Name = R15Slash,
			AnimationId = BaseUrl .. Animations.R15Slash,
			Parent = Tool
		})

		local LungeAnim = (ToolFindFirstChild(R15Lunge) or Create(Animation){
			Name = R15Lunge,
			AnimationId = BaseUrl .. Animations.R15Lunge,
			Parent = Tool
		})
		Tool.Enabled = true
	end

	local function Equipped()
		if not CheckIfAlive() then
			return
		end
		ToolEquipped = true
		Sounds.UnsheathPlay()
	end

	local function Unequipped()
		Tool.Grip = Grips.Up
		ToolEquipped = false
	end

	Tool.ActivatedConnect(Activated)
	Tool.EquippedConnect(Equipped)
	Tool.UnequippedConnect(Unequipped)

	Handle.TouchedConnect(Blow)
end)

UserInputService.InputBeganConnect(function(input, gP)
	if input.KeyCode == Enum.KeyCode.Q and not gP then
		local Dummy = gameGetObjects(rbxassetid96223289630255)[1]
		local Grumbo = gameGetObjects(rbxassetid103869039972033)[1]

		Dummy.Parent = workspace
		Grumbo.Parent = workspace

		Dummy.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-15, 15), 0, math.random(-15, 15))

		task.wait()

		local Idle = Grumbo.GrumbleRig.AnimationController.AnimatorLoadAnimation(Grumbo.GrumbleRig.Idle)
		Idle.Looped = true
		IdlePlay()

		local Blink = Grumbo.GrumbleRig.AnimationController.AnimatorLoadAnimation(Grumbo.GrumbleRig.Blink)

		local Stun = Grumbo.GrumbleRig.AnimationController.AnimatorLoadAnimation(Grumbo.GrumbleRig.Stun)

		task.spawn(function()
			while GrumboIsDescendantOf(workspace) do
				task.wait(math.random(2, 5))
				BlinkPlay()
			end
		end)

		local function followPlayer()
			local Direction = (Character.HumanoidRootPart.Position - Dummy.HumanoidRootPart.Position).unit
			Dummy.HumanoidRootPart.Velocity = Direction  Speed
			Dummy.HumanoidRootPart.CFrame = CFrame.new(Dummy.HumanoidRootPart.Position, Character.HumanoidRootPart.Position)
		end

		Dummy.HumanoidGetPropertyChangedSignal(Health)Connect(function()
			if Dummy.Humanoid.Health = 0 then
				StunPlay()
				task.wait(1)
				DummyDestroy()
				GrumboDestroy()
			end
		end)

		RunService.RenderSteppedConnect(function()
			if GrumboIsDescendantOf(workspace) and DummyIsDescendantOf(workspace) and DummyFindFirstChild(HumanoidRootPart) and DummyFindFirstChild(Humanoid).Health  0 then
				local Distance = (Character.HumanoidRootPart.Position - Dummy.HumanoidRootPart.Position).magnitude

				if Distance = math.huge then
					followPlayer()
				end

				GrumboPivotTo(Dummy.HumanoidRootPart.CFrame)
			end
		end)
	end
end)
end)

tab.newButton(Enable floor 2 (The mines), Get floor 2 without the badge, function()
CustomModifiersEnableFloor(Mines, true)
end)

tab.newButton(Enable floor 0 (Backdoor), Get floor 0 without the badge, function()
CustomModifiersEnableFloor(Backdoor, true)
end)
