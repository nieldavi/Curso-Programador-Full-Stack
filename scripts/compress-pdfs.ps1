param(
    [string[]]$Path,
    [switch]$Staged,
    [string]$Resolution = "ebook"
)

$ErrorActionPreference = "Stop"

function Get-StagedPdfPaths {
    git diff --cached --name-only --diff-filter=ACM -- "*.pdf" |
        Where-Object { $_ -and (Test-Path -LiteralPath $_) }
}

function Get-TargetPdfPaths {
    if ($Staged) {
        return @(Get-StagedPdfPaths)
    }

    if ($Path -and $Path.Count -gt 0) {
        return @($Path)
    }

    return @(Get-ChildItem -Recurse -File -Filter "*.pdf" | ForEach-Object { $_.FullName })
}

function Compress-Pdf {
    param([string]$PdfPath)

    $resolved = Resolve-Path -LiteralPath $PdfPath
    $fullPath = $resolved.Path
    $before = (Get-Item -LiteralPath $fullPath).Length
    $tempDir = Join-Path ([System.IO.Path]::GetTempPath()) ("pdf-compress-" + [guid]::NewGuid().ToString("N"))

    New-Item -ItemType Directory -Path $tempDir | Out-Null

    try {
        $inputPath = Join-Path $tempDir "input.pdf"
        $outputPath = Join-Path $tempDir "output.pdf"

        Copy-Item -LiteralPath $fullPath -Destination $inputPath -Force

        Push-Location $tempDir
        try {
            & npx -y compress-pdf --file "input.pdf" --output "output.pdf" --resolution $Resolution
            if ($LASTEXITCODE -ne 0) {
                throw "compress-pdf exited with code $LASTEXITCODE"
            }
        }
        finally {
            Pop-Location
        }

        if (!(Test-Path -LiteralPath $outputPath)) {
            throw "Compressed output was not created."
        }

        $after = (Get-Item -LiteralPath $outputPath).Length
        if ($after -lt $before) {
            Copy-Item -LiteralPath $outputPath -Destination $fullPath -Force
            $saved = 100 - (($after / $before) * 100)
            Write-Host ("Compressed: {0} ({1:N2} MB -> {2:N2} MB, {3:N1}% smaller)" -f $PdfPath, ($before / 1MB), ($after / 1MB), $saved)
            return $true
        }

        Write-Host ("Skipped: {0} (compressed file was not smaller)" -f $PdfPath)
        return $false
    }
    finally {
        Remove-Item -LiteralPath $tempDir -Recurse -Force -ErrorAction SilentlyContinue
    }
}

$targets = @(Get-TargetPdfPaths)
if ($targets.Count -eq 0) {
    Write-Host "No PDF files found."
    exit 0
}

$changed = $false
foreach ($target in $targets) {
    $changed = (Compress-Pdf -PdfPath $target) -or $changed
}

if ($Staged -and $changed) {
    foreach ($target in $targets) {
        git add -- "$target"
    }
}
