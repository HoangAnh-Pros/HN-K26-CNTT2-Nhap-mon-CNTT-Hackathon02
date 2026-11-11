# Script: tong_hop.ps1
# Tac gia: Le Hoang Anh
# Ngày tao: 11/11/2026
Write-host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
gc .\logs\request.log | Select-String "status=500" >> logs/tong_hop.txt
gc .\logs\request.log | Select-String "status=404" | Measure-Object >> logs/tong_hop.txt
Write-host "Hoan thanh!"