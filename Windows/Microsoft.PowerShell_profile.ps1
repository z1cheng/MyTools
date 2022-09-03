Set-Alias -Name k -Value kubectl
Set-Alias -Name s -Value scoop
Set-Alias -Name open -Value Invoke-Item
Set-Alias -Name ll -Value "Get-ChildItem"

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
Set-PSReadLineOption -Colors @{ InlinePrediction  = '#2F7004'}

# Invoke-Expression (&starship init powershell)
