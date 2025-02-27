#!/bin/bash

# Set Original Gist details
OLD_GIST_URL="https://gist.github.com/unameit10000000/a660a242dcbef241f7b04e507d7c8431"
OLD_GIST_ID="a660a242dcbef241f7b04e507d7c8431"

# Set GitHub credentials - REPLACE THESE with your actual values
GITHUB_USERNAME="<your-username>"
GITHUB_TOKEN="<your-access-token>"

# Clone the original Gist
echo "Cloning the original Gist..."
git clone $OLD_GIST_URL gist-$OLD_GIST_ID
cd gist-$OLD_GIST_ID || exit 1

# Create a timestamp
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
NEW_FILENAME="wish-$TIMESTAMP.md"

# Find and rename the wish file
WISH_FILE=$(find . -name "*wish*.md" | head -1)
if [ -n "$WISH_FILE" ]; then
    echo "Found $WISH_FILE - renaming to $NEW_FILENAME"
    mv "$WISH_FILE" "$NEW_FILENAME"
else
    echo "Error: No wish file found."
    exit 1
fi

# Check if renaming was successful
if [ ! -f "$NEW_FILENAME" ]; then
    echo "Error: Failed to rename file."
    exit 1
fi

# Read file content (not strictly needed as we'll use the actual file for the API)
CONTENT=$(cat "$NEW_FILENAME")

# Remove Git history
echo "Removing Git history..."
rm -rf .git
git init
git branch -M main

# Create a new Gist via API
echo "Creating a new Gist via API..."
echo "Note: If you see authentication errors, make sure to update GITHUB_USERNAME and GITHUB_TOKEN with your actual credentials"

# Create a temporary JSON file for the request
cat > gist_request.json << EOL
{
  "description": "Cloned from: $OLD_GIST_ID",
  "public": false,
  "files": {
    "$NEW_FILENAME": {
      "content": $(jq -Rs . "$NEW_FILENAME")
    }
  }
}
EOL

# Use curl to create the Gist
curl -X POST -H "Authorization: token $GITHUB_TOKEN" -H "Content-Type: application/json" \
     --data @gist_request.json https://api.github.com/gists > response.json

# Extract the Gist ID from the response
NEW_GIST_ID=$(grep -o '"id": "[^"]*' response.json | head -1 | cut -d'"' -f4)

echo "New Gist ID: $NEW_GIST_ID"

# Clean up temporary files
rm gist_request.json response.json

# Commit and push
git add .
git commit -m "Cloned from Gist: $OLD_GIST_ID"
git remote add origin https://gist.github.com/$NEW_GIST_ID.git
git push -u origin main -f

echo "Gist duplicated successfully!"
echo "New URL: https://gist.github.com/$NEW_GIST_ID"
echo "Press Enter to continue..."
read