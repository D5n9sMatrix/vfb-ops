#inclib "vfb-ops"
' states of emergency text senator
' create section benefit states of
' emergency relator ...
Declare Function IOErrorSector ( ByRef Info As byte)
type Info
   Dim InfoTypes As byte
   Dim InfoEvent As byte
   Dim InfoObjes As byte
end type

Type ScoreEntry Field = 1
    As String * 20 Name
    As Single score
End Type

Dim As ScoreEntry entry

'' Generate a fake boring highscore file
Open "scores.dat" For Random Access Write As #1 Len = SizeOf(entry)
For i As Integer = 1 To 10
    entry.Name = "Player " & i
    entry.score = i
    Put #1, i, entry
Next
Close #1

'' Read out and display the entries
Open "scores.dat" For Random Access Read As #1 Len = SizeOf(entry)
For i As Integer = 1 To 10
    Get #1, i, entry
    Print i & ":", entry.Name, Str(entry.score), entry.score
Next
Close #1
End

