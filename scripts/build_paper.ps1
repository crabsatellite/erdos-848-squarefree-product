$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$paper = Join-Path $root "paper"
$source = "erdos_848_kernel_asymptotic.tex"
$job = "Li_Erdos_848_Kernel_Asymptotic_2026"

Push-Location $paper
try {
    pdflatex -interaction=nonstopmode -halt-on-error "-jobname=$job" $source
    pdflatex -interaction=nonstopmode -halt-on-error "-jobname=$job" $source
} finally {
    Pop-Location
}
