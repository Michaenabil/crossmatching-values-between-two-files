# CSV Cross-Matching Script

## Overview

This PowerShell script compares two CSV files and identifies matching entries based on a specified column (e.g., domain, IP address, username). It's a useful tool for threat intelligence enrichment, data correlation, and duplicate checks.

## Features

- Accepts two CSV files as input.
- Compares entries based on a common column.
- Exports all matching rows from the first file into a new CSV.
- Easily customizable column for matching.

## Requirements

- PowerShell 5.1 or newer
- CSV files with at least one common column (e.g., "Domain")

## Configuration

Update the file paths and column name directly in the script:

```powershell
$csv1 = Import-Csv "C:\Path\to\first_file.csv"
$csv2 = Import-Csv "C:\Path\to\second_file.csv"
$commonColumn = "Domain"  # Column to match across both files
