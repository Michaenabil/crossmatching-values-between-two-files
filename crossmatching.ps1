$csv1 = Import-Csv "C:\Users\basil\Downloads\cloudflare-radar_top-10000-domains_20250512-20250519.csv"
$csv2 = Import-Csv "C:\Users\basil\Downloads\all_domains.csv"

# Define the column to match on
$commonColumn = "Domain"  # Change this to match your use case, e.g., "IP", "Username", etc.

# Find matching rows
$matchingRows = @()

foreach ($row1 in $csv1) {
    foreach ($row2 in $csv2) {
        if ($row1.$commonColumn -eq $row2.$commonColumn) {
            # Store matching entry (you can store entire row1 or a custom object)
            $matchingRows += $row1
        }
    }
}

# Output to console or export to a new CSV
$matchingRows | Export-Csv "C:\Users\basil\Downloads\Matching_Results.csv" -NoTypeInformation
Write-Host "Matching entries saved to Matching_Results.csv"