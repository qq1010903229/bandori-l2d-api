<%
Response.AddHeader "Cache-Control","no-cache"
Response.AddHeader "Pragma","no-cache"
Response.AddHeader "Content-Type","text/plain"
Set FS = Server.CreateObject("Scripting.FileSystemObject")
If FS.FileExists(Server.MapPath(Request.QueryString("id")&".txt")) then
t="/switch/"&Request.QueryString("id")&".txt?_="&(DateDiff("s", "1970-1-1 8:00:00", Now()))
Response.AddHeader "Location",t
Response.Status="302 Found"
Response.Write "This page has moved to "&t&Chr(13)&Chr(10)
Else
Response.Status="404 Not Found"
End If
%>