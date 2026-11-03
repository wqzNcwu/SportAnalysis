$ErrorActionPreference = 'Stop'

$data = Join-Path $PSScriptRoot 'data'
New-Item -ItemType Directory -Path $data -Force | Out-Null

python -m pip install gdown

gdown -O (Join-Path $data 'football-ball-detection.pt') 'https://drive.google.com/uc?id=1isw4wx-MK9h9LMr36VvIWlJD6ppUvw7V'
gdown -O (Join-Path $data 'football-player-detection.pt') 'https://drive.google.com/uc?id=17PXFNlx-jI7VjVo_vQnB1sONjRyvoB-q'
gdown -O (Join-Path $data 'football-pitch-detection.pt') 'https://drive.google.com/uc?id=1Ma5Kt86tgpdjCTKfum79YMgNnSjcoOyf'
gdown -O (Join-Path $data '2e57b9_0.mp4') 'https://drive.google.com/uc?id=19PGw55V8aA6GZu5-Aac5_9mCy3fNxmEf'

Write-Host '视频和预训练模型下载完成。'
