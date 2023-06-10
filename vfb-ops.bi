#inclib "vfb-ops"
Declare Function OpsDebugger( ByVal x As Integer, ByVal y As Integer ) As Integer
type OpsError
   Dim OpsErrorTypes As EventArgs
   Dim OpsErrorEvent As EventArgs
   Dim OpsErrorObjes As EventArgs
end type
Declare Sub Debug ( ByRef OpsErrors As EventArgs ByRef OpsFiles As byte)
Extern Sys Alias "Sys" As integer
Dim Sys As String = "Scream Sys"
Debug
Print Sys
Rem Debug
End



