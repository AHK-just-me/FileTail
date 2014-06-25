#NoEnv
#Include FileTail.ahk
SetBatchLines, -1

LineArray := FileTail(A_ScriptName, 100)
Gui, Add, Text, , % "File: " . A_ScriptName . " -> last " . LineArray.MaxIndex() . " lines."
Gui, Add, Edit, w600 r20, % StrCompose(LineArray)
Gui, Show, , % "FileTail(" . A_ScriptName . ", 100)"
Return

GuiClose:
GuiEscape:
ExitApp

StrCompose(StrArray, Delimiter := "`r`n") {
   String := ""
   For Each, Str In StrArray
      String .= Str . Delimiter
   Return RTrim(String, Delimiter)
}