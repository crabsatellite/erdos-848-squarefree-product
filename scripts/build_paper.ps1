$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$paper = Join-Path $root "paper"
$source = "erdos_848_kernel_checked_exact_extremal_bound.tex"
$job = "Li_Erdos_848_Kernel_Checked_Exact_Extremal_Bound_2026"
$priorSourceDateEpoch = $env:SOURCE_DATE_EPOCH
$priorForceSourceDate = $env:FORCE_SOURCE_DATE
$env:SOURCE_DATE_EPOCH = "1767225600"
$env:FORCE_SOURCE_DATE = "1"

python -B (Join-Path $root "scripts\verify_reference_evidence.py") `
    --require-cited-coverage --require-entry-checks --quiet
if ($LASTEXITCODE -ne 0) {
    throw "Reference-evidence gate failed with exit code $LASTEXITCODE"
}

python -B (Join-Path $root "scripts\verify_paper_lean_correspondence.py") --quiet
if ($LASTEXITCODE -ne 0) {
    throw "Paper/Lean correspondence gate failed with exit code $LASTEXITCODE"
}

python -B (Join-Path $root "scripts\verify_paper_lean_numbers.py") --quiet
if ($LASTEXITCODE -ne 0) {
    throw "Paper/Lean numeric gate failed with exit code $LASTEXITCODE"
}

Push-Location $paper
try {
    Remove-Item -LiteralPath "$job.aux", "$job.bbl", "$job.blg", `
        "$job.out", "$job.log" `
        -ErrorAction SilentlyContinue
    pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "First pdflatex pass failed with exit code $LASTEXITCODE"
    }
    bibtex $job
    if ($LASTEXITCODE -ne 0) {
        throw "BibTeX pass failed with exit code $LASTEXITCODE"
    }
    pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "Second pdflatex pass failed with exit code $LASTEXITCODE"
    }
    pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-jobname=$job" $source
    if ($LASTEXITCODE -ne 0) {
        throw "Third pdflatex pass failed with exit code $LASTEXITCODE"
    }
    $logText = Get-Content -LiteralPath "$job.log" -Raw
    if ($logText -match "LaTeX Warning: (Citation|Reference).*undefined" -or
        $logText -match "There were undefined references") {
        throw "Final LaTeX log contains an undefined citation or reference"
    }
    if ($logText -match "Overfull \\hbox") {
        throw "Final LaTeX log contains an overfull horizontal box"
    }
} finally {
    Remove-Item -LiteralPath "$job.aux", "$job.bbl", "$job.blg", `
        "$job.out", "$job.log" `
        -ErrorAction SilentlyContinue
    Pop-Location
    $env:SOURCE_DATE_EPOCH = $priorSourceDateEpoch
    $env:FORCE_SOURCE_DATE = $priorForceSourceDate
}

python -B (Join-Path $root "scripts\refresh_proof_contract.py") --write
if ($LASTEXITCODE -ne 0) {
    throw "Proof-contract refresh failed with exit code $LASTEXITCODE"
}
