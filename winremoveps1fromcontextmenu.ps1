<#

  .SYNOPSIS
  Script removes ps1 script from explorer context menu
  
  .DESCRIPTION
  Script removes ps1 script from explorer context menu

  .INPUTS
  None

  .OUTPUTS
  None
  
  .PARAMETER
  None
  
#>

[System.String[]] $subKeys = @( 'Directory', 'Directory\Background', 'Drive' )

foreach ($keyName in $subKeys) {
    $path = "Registry::HKEY_CLASSES_ROOT\$keyName\shell\PowerShellCustomScript"

    Remove-Item -Path $path -Force -Recurse -ErrorAction SilentlyContinue
}
