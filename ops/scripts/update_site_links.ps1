param(
  [Parameter(Mandatory=$true)][string]$PaperId,   # e.g., A1
  [Parameter(Mandatory=$true)][string]$ArxivAbs,  # e.g., https://arxiv.org/abs/25xx.xxxxx
  [Parameter(Mandatory=$true)][string]$OsfUrl     # e.g., https://osf.io/xxxxx/
)

$root = Split-Path -Parent $PSScriptRoot
$papers = Join-Path $root "site\papers\index.html"

if (!(Test-Path $papers)) { throw "Missing: $papers" }

$content = Get-Content $papers -Raw

# Replace first occurrence for the requested paper entry (simple marker approach)
# You will update the entry manually if needed; this script is designed to reduce friction.
switch ($PaperId.ToUpper()) {
  "A1" {
    $content = $content -replace "https://arxiv\.org/abs/ARXIV_ID_TBD", $ArxivAbs
    $content = $content -replace "https://osf\.io/OSF_RELEASE_TBD", $OsfUrl
  }
  default { throw "Unsupported PaperId: $PaperId (supported: A1 only initially)" }
}

Set-Content -Path $papers -Value $content -Encoding UTF8
Write-Host "Updated site links for $PaperId in $papers"
