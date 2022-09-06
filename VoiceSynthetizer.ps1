[Reflection.Assembly]::LoadWithPartialName('System.Speech') | Out-Null
#notepad.exe 
Invoke-WebRequest -uri "https://raw.githubusercontent.com/St0n14/Pranks/main/PrankPhrases.txt" -OutFile $HOME\prankphrases.txt 
$phrases = Get-Content $HOME\prankphrases.txt 
$phrase = Get-Random $phrases 
#$phrase = "You get pwned"
$object = New-Object System.Speech.Synthesis.SpeechSynthesizer 
$object.SelectVoiceByHints('Male')
$object.Speak($phrase)