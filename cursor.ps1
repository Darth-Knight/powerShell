Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
  $offset = 500     # Pixels by which the cursor is to be moved
  $timeDiff = 2    # Seconds after which we want the cursor to be moved - We can randomize this time as well

  $Pos = [System.Windows.Forms.Cursor]::Position
  $horizontal = ($pos.X % $offset) + 500
  $vertical = ($pos.Y % $offset) + 300

  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($horizontal, $vertical)

  Start-Sleep -Seconds $timeDiff
}