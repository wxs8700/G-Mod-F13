AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
--AddCSLuaFile("testhud.lua")
--AddCSLuaFile("teamsetup.lua")

include("shared.lua")
--include("teamsetup.lua")

--player_manager.AddValidModel( "Jason Voorhees", 						"models/player/SGG/Jason_v.mdl" )
--list.Set( "PlayerOptionsModel",  "Jason Voorhees", 						"models/player/SGG/Jason_v.mdl" )

--resource.AddFile(models/player/SGG/Jason_v.mdl)
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()
--resource.AddFile()

function GM:PlayerSpawn(ply)
	ply:SetupHands()
	ply:AllowFlashlight(true)
	--ply:Give("light")
end

function GM:PlayerInitialSpawn(ply)
	-- only when joining server
	ply:ConCommand( "team_menu" )
	
end

function team_1(ply)
	ply:SetTeam(0)
	--PlayerSetModel(ply)
	ply:SetModel("models/player/SGG/jason_v.mdl")
	ply:Spawn()
	ply:StripWeapons()
	ply:SetMaxHealth(500)
	ply:SetHealth(500)
	ply:SetRunSpeed(100)
	ply:SetWalkSpeed(100)
	ply:Give("m9k_machete")
	ply:Give("blink_swep")
	--ply:SetModel("jasonpart2")
	
	
end

function team_2(ply)
	ply:SetTeam(1)
	--PlayerSetModel(ply)
	ply:SetModel("models/player/Group03m/Male_0" .. math.random(1,9) .. ".mdl")
	ply:Spawn()
	ply:StripWeapons()
	ply:Give("weapon_fists")
	ply:SetMaxHealth(200)
	ply:SetHealth(200)
	ply:SetRunSpeed(200)
	ply:SetWalkSpeed(150)
end

concommand.Add("jason", team_1)
concommand.Add("camper", team_2)
