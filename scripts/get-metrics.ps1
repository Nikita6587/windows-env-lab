# scripts/get-metrics.ps1
Write-Host "=== Project Development Metrics ===" -ForegroundColor Cyan

# Общее число коммитов
$totalCommits = git rev-list --count HEAD
Write-Host "Total commits: $totalCommits"

# Число авторов
$authors = git shortlog -sn | Measure-Object -Line
Write-Host "Active authors: $($authors.Lines)"

# Последние 5 коммитов
Write-Host "`nLast 5 commits:"
git log --oneline -5

# Теги
Write-Host "`nTags:"
git tag -l

# Ветки
Write-Host "`nBranches:"
git branch -a
