    Import-Module PeteBrown.PowerShellMidi.dll

    $Device = (Get-MidiOutputDeviceInformation | Where-Object {$_.name -eq "Midi"}).Id

    $Port = Get-MidiOutputPort -Id $Device    
Send-MidiNoteOnMessage -Note 81 -Velocity 100 -Channel 0 -Port $Port
Send-MidiNoteOnMessage -Note 85 -Velocity 100 -Channel 0 -Port $Port
Send-MidiNoteOnMessage -Note 88 -Velocity 100 -Channel 0 -Port $Port
Send-MidiNoteOnMessage -Note 88 -Velocity 100 -Channel 0 -Port $Port
Start-Sleep 2000
Send-MidiNoteOffMessage -Note 81 -Velocity 10 -Channel 0 -Port $Port
Send-MidiNoteOffMessage -Note 85 -Velocity 10 -Channel 0 -Port $Port
Send-MidiNoteOffMessage -Note 88 -Velocity 10 -Channel 0 -Port $Port
Send-MidiNoteOffMessage -Note 88 -Velocity 10 -Channel 0 -Port $Port
    Send-MidiNoteOnMessage -Note 81 -Velocity 100 -Channel 0 -Port $Port
Start-Sleep 2000
Send-MidiNoteOffMessage -Note 81 -Velocity 10 -Channel 0 -Port $Port 
