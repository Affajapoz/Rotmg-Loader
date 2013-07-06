*************************************************************
-- RotMG Loader by Affa v1 June 23, 2013
--
-- Copyright (c) 2000, 2020 affa
-- Distributed under the GNU/GPL license (see http://www.gnu.org/copyleft/)
--
--*************************************************************
--Used to get the new AGCLoader version number when they update the client.
--This isn't a mod/client hack.
--All it does it get the Version numbers from http://www.realmofthemadgod.com/version.txt
--Starts flash projector for you with the new version number. So you never have to go fetch it yourself.
--Please share this script all you want, if you want. Post it on the forums(I don't have an account) or reddit(no account as well).
--*************************************************************

set urll to "http://www.realmofthemadgod.com/AGCLoader"
set num to (do shell script "curl http://www.realmofthemadgod.com/version.txt")
set swf to ".swf"
set full_url to urll & num & swf

set the clipboard to full_url

--*************************************************************
--Be sure to change "Flash" below to whatever your Flash Projector is. eg. flashplayer_11_sa
--*************************************************************

tell application "Flash"
  launch
end tell

tell application "Flash"
	activate
end tell

tell application "System Events"
	keystroke "o" using {shift down, command down}
	keystroke "v" using command down
	keystroke return
end tell
