$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$paper = Join-Path $root "paper"
$source = "erdos_848_kernel_asymptotic.tex"
$job = "Li_Erdos_848_Kernel_Asymptotic_2026"

Push-Location $paper
try {
    Remove-Item -LiteralPath "$job.aux", "$job.out", "$job.log" `
        -ErrorAction SilentlyContinue
    pdflatex -interaction=nonstopmode -halt-on-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "First pdflatex pass failed with exit code $LASTEXITCODE"
    }
    pdflatex -interaction=nonstopmode -halt-on-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "Second pdflatex pass failed with exit code $LASTEXITCODE"
    }
    pdflatex -interaction=nonstopmode -halt-on-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "Third pdflatex pass failed with exit code $LASTEXITCODE"
    }
} finally {
    Remove-Item -LiteralPath "$job.aux", "$job.out", "$job.log" `
        -ErrorAction SilentlyContinue
    Pop-Location
}
