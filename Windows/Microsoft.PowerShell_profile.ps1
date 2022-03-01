Set-Alias -Name k -Value kubectl
Set-Alias -Name s -Value scoop

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
Set-PSReadLineOption -Colors @{ InlinePrediction  = '#2F7004'}
