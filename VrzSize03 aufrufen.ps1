# ------------------------------------------------------------------------------
# Funktion aufrufen
# ------------------------------------------------------------------------------
# Lege Array mit (Verzeichnis-Objekten|qed) an
#
# PS> Get-ChildItem -Directory -Path "R:\Pod\Syn202\" |
#     Select-Object -Property FullName
# 
# FullName
# --------
# R:\Pod\Syn202\--)
# R:\Pod\Syn202\DfI-LN
# R:\Pod\Syn202\DFK-Interpretationen
# R:\Pod\Syn202\fallweise heruntergeladene Podcasts
# R:\Pod\Syn202\LokLwkC
# R:\Pod\Syn202\LokLwkD(Pli)
# 
# PS>

# $VL =  @()
# $VL += "R:\Pod\Syn202\--)"
# $VL += "R:\Pod\Syn202\DfI-LN"
# $VL += "R:\Pod\Syn202\DFK-Interpretationen"
# $VL
# $VL | VrzSize03

# $VL = Get-ChildItem -Directory -Path "R:\"
# $VL.FullName
# $VL.FullName | VrzSize03

# $VL = Get-ChildItem -Directory -Path "R:\Pod\"
# $VL.FullName
# $VL.FullName | VrzSize03

$VL = Get-ChildItem -Directory -Path "R:\Pod\Syn202\"
$VL.FullName
$VL.FullName | VrzSize03