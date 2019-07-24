include("shared.lua")
--include("testhud.lua")
include("teamsetup.lua")

function set_team()
 
local frame = vgui.Create( "DFrame" )
frame:SetPos( ScrW() / 2, ScrH() / 2 ) --Set the window in the middle of the players screen/game window
frame:SetSize( 200, 210 ) --Set the size
frame:SetTitle( "Change Team" ) --Set title
frame:SetVisible( true )
frame:SetDraggable( false )
frame:ShowCloseButton( true )
frame:MakePopup()
 
team_1 = vgui.Create( "DButton", frame )
team_1:SetPos( frame:GetTall() / 2, 5 ) --Place it half way on the tall and 5 units in horizontal
team_1:SetSize( 50, 100 )
team_1:SetText( "Jason" )
team_1.DoClick = function() --Make the player join team 1
    RunConsoleCommand( "jason" )
end
 
team_2 = vgui.Create( "DButton", frame )
team_2:SetPos( frame:GetTall() / 2, 105 ) --Place it next to our previous one
team_2:SetSize( 50, 100 )
team_2:SetText( "Camper" )
team_2.DoClick = function() --Make the player join team 2
    RunConsoleCommand( "camper" )
end
 
end
concommand.Add( "team_menu", set_team )