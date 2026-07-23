#!/bin/bash

# 1. Define your paths and files
MAIN_DIR="/Users/user/code/github/accessibility-dashboard/jobs"
SRC_DIR="/Users/user/code/github/accessibility-dashboard" # <- Update this to where your 3 new files live!

FILES=("readme_overview.html" "dashboard_guide.html" "workbook_guide.html")

# 2. Define the specific subfolders to target
SUBFOLDERS=(
    "arcajewelry2-20260601-203046"
    "arngren-20260519-135849"
    "badhtml-all-tools-20260524-170932"
    "badhtml-axe-core-20260524-182823"
    "badhtml-axe-scan-20260524-190251"
    "badhtml-html-sniffer-20260524-182837"
    "badhtml-ibm-20260524-185544"
    "badhtml-lighthouse-20260524-183601"
    "badhtml-new-tools-20260524-175356"
    "badhtml-oobee-20260524-183552"
    "badhtml-pa11y-20260524-190110"
    "badhtml-samefamily-axe-20260524-180414"
    "badhtml-samefamily-htmlsniffer-20260524-180434"
    "badhtml-uuv-20260524-185554"
    "brianbutterfield909-20260624-235510"
    "bubblegun2-20260520-022449"
    "demo-login-2-all-tools-20260524-194614"
    "demo-login-4-all-tools-20260524-212605"
    "demo-login-all-tools-20260524-191346"
    "disappointment-20260520-011150"
    "garthmarenghi-20260525-033526"
    "havenworks-20260519-135814"
    "hyperphysics-20260516-152753"
    "internetoracle-20260517-192002"
    "jaaaaaam606-20260520-211825"
    "jodi303-20260522-121039"
    "marksandspencer909-noibm-20260603-220522"
    "milk-20260513-215756"
    "ntk-20260519-002856"
    "parabank-20260602-153112"
    "passweird-all-tools-20260524-220800"
    "practicalaccessibility909-20260604-124231"
    "priyom-20260516-120733"
    "ptable-20260517-161108"
    "regn909-20260603-150733"
    "smokehammer2-20260520-152737"
    "superkaylo1-20230523-203630"
    "symbolics-20260513-225818"
    "thisman-20260513-225622"
    "tokyoflash909-20260603-154826"
    "trashbat1-20260520-160722"
    "tvgohome-20260518-103243"
    "wai-demos-bad2-20260523-203732"
    "wai-demos-good2-20260523-203808"
)

# 3. Loop through folders and swap files
for folder in "${SUBFOLDERS[@]}"; do
    TARGET_PATH="$MAIN_DIR/$folder"
    
    # Check if the folder actually exists before proceeding
    if [ -d "$TARGET_PATH" ]; then
        echo "Updating: $folder..."
        for file in "${FILES[@]}"; do
            if [ -f "$SRC_DIR/$file" ]; then
                cp "$SRC_DIR/$file" "$TARGET_PATH/$file"
            else
                echo "  Error: Source file $file not found in $SRC_DIR"
            fi
        done
    else
        echo "Skipping: $folder (Directory does not exist)"
    fi
done

echo "Done! All files replaced successfully."
