function VrzSize03
{
# ------------------------------------------------------------------------------
# Größe des Verzeichnisses $FullName ermitteln
# PowerShell 5 (Tobias Weltner)  Kapitel 6: Die PowerShell-Pipeline 
# Ordnergrößen berechnen S. 145/329
# ------------------------------------------------------------------------------
# Parameter = $FullName
# ------------------------------------------------------------------------------
  param
  (
   [Parameter(ValueFromPipeline)]
   [string]$FullName
  )
# ------------------------------------------------------------------------------
# Start-Block: Zeitmessung beginnen          
# ------------------------------------------------------------------------------
  begin
  {
   $start = Get-Date
  }
# ------------------------------------------------------------------------------
# Process-Block          
# ------------------------------------------------------------------------------
  process
  { echo "Ermittle die Größe des Verzeichnisses [$FullName]"
    (Get-ChildItem -Path $FullName -File -Recurse -Force -ErrorAction Ignore |
     Measure-Object -Property Length -Sum).Sum
  }
# ------------------------------------------------------------------------------
# Ende-Block: Zeitmessung beenden          
# ------------------------------------------------------------------------------
  end
  {
   $ende = Get-Date
   $dauer = $ende - $start
   $millisec = $dauer.TotalMilliSeconds
   Write-Warning "Ausführungszeit: $millisec ms"
  }
# ------------------------------------------------------------------------------
} 

