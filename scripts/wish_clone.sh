#!/bin/bash

# Set Original Gist details
OLD_GIST_URL="https://gist.github.com/unameit10000000/a660a242dcbef241f7b04e507d7c8431"
OLD_GIST_ID="a660a242dcbef241f7b04e507d7c8431"

# Set GitHub credentials - REPLACE THESE with your actual values
GITHUB_USERNAME="<your-username>"
GITHUB_TOKEN="<your-access-token>"

# Create a timestamp for directory and filename
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
NEW_FILENAME="_wish-$TIMESTAMP.md"
CLONE_DIR="gist-$OLD_GIST_ID-$TIMESTAMP"

# Clone the original Gist
echo "Cloning the original Gist..."
git clone $OLD_GIST_URL $CLONE_DIR
cd $CLONE_DIR || exit 1

# Find and rename only the _wish.md file
if [ -f "_wish.md" ]; then
    echo "Found _wish.md - renaming to $NEW_FILENAME"
    mv "_wish.md" "$NEW_FILENAME"
else
    echo "Warning: _wish.md file not found."
fi

# Check if renaming was successful
if [ ! -f "$NEW_FILENAME" ]; then
    echo "Error: Failed to rename file."
    exit 1
fi

# Read file content
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
  "description": "Cloned from gist $OLD_GIST_ID using 'wish_clone'.",
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
git commit -m "Cloned from gist $OLD_GIST_ID using 'wish_clone'."
git remote add origin https://gist.github.com/$NEW_GIST_ID.git
git push -u origin main -f

echo "Gist duplicated successfully!"
echo "New URL: https://gist.github.com/$NEW_GIST_ID"
echo "Press Enter to continue..."
read