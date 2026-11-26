$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $root '..\cad_drawing\output'
$target = Join-Path $root 'site-public\assets'
New-Item -ItemType Directory -Path $target -Force | Out-Null

$files = @{
  'isometric_render.png' = 'isometric.png'
  'drawing_preview.png' = 'source-drawing.png'
  'technical_showcase.png' = 'technical-showcase.png'
  'front_render.png' = 'front.png'
  'side_render.png' = 'side.png'
  'video_stills\02_comparison.png' = 'video-poster.png'
  'LPB-01_2D_to_3D_20s.mp4' = 'demo.mp4'
  'LPB-01_source_drawing_revA.pdf' = 'source-drawing.pdf'
  'LPB-01_source_geometry_revA.dxf' = 'source-geometry.dxf'
  'LPB-01_comparison_report.pdf' = 'comparison-report.pdf'
  'assembly.step' = 'assembly.step'
  'bracket.step' = 'bracket.step'
  'pin.step' = 'pin.step'
  'bracket.stl' = 'bracket.stl'
  'pin.stl' = 'pin.stl'
  'LPB-01_client_sample.zip' = 'sample-package.zip'
}
foreach ($name in $files.Keys) {
  $from = Join-Path $source $name
  if (-not (Test-Path -LiteralPath $from)) { throw "Missing source asset: $from" }
  Copy-Item -LiteralPath $from -Destination (Join-Path $target $files[$name]) -Force
}
Write-Host "Synced $($files.Count) CAD sample assets to $target"
