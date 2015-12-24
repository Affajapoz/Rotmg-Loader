'*************************************************************
' RotMG Loader by Affa v1 June 23, 2013
'
' Copyright (c) 2000, 2020 affa
' Distributed under the GNU/GPL license (see http://www.gnu.org/copyleft/)
'
'*************************************************************
'Used to get the new AGCLoader version number when they update the client.
'This isn't a mod/client hack.
'All it does it get the Version numbers from http://www.realmofthemadgod.com/version.txt
'Starts flash projector for you with the new version number. So you never have to go fetch it yourself.
'Please share this script all you want, if you want. Post it on the forums(I don't have an account) or reddit(no account as well).
'*************************************************************
Set xml = CreateObject("MSXML2.ServerXMLHTTP")
 
xml.open "GET" , "http://www.realmofthemadgod.com/version.txt", False
xml.send
xmlOutput = xml.responseText
 
Set WshShell = WScript.CreateObject("WScript.Shell")
'*************************************************************
'I have the script start the projector on High. My computer can handle this. Here are the settings to change it.
'/Normal
'/High
'/Realtime
'Realtime will make your computer so slow while playing realm I wouldn't recomend it.
'If you need to change the setting because your computer lags on high I would recomend /Normal.
'*************************************************************
'Return = WshShell.Run("cmd /C start /High flashplayer_19_sa.exe http://www.realmofthemadgod.com/AGCLoader" & xmlOutput & ".swf", 0, true)
Return = WshShell.Run("cmd /C start /High flashplayer_19_sa.exe https://realmofthemadgodhrd.appspot.com/AssembleeGameClient" & xmlOutput & ".swf", 0, true)
Set WshShell = Nothing
WScript.Quit(0)
