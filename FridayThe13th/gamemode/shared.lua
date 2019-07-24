GM.Name = "FridayThe13th"
GM.Author = "LennyTheAlien"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode("sandbox")

function GM:Initialize()
	team.SetUp(0, "Jason", Color(255,0,0))
	team.SetUp(1, "Campers", Color(,0,255))
end