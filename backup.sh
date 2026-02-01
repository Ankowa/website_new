#!/bin/bash
# Define the repository directory and branch name
REPO_DIR="/root/website"   # <-- Replace with your repository path
BRANCH="main"                  # <-- Replace with your branch name if different

# Change to the repository directory or exit if it doesn't exist
cd "$REPO_DIR" || { echo "Repository directory not found: $REPO_DIR"; exit 1; }

git config --global user.email "antonikowalczuk@gmail.com"
git config --global user.name "Antoni Kowalczuk"
# Stage all changes (new, modified, and deleted files)
git add -A

# Check if there is anything to commit
if ! git diff-index --quiet HEAD --; then
    # Create a commit with a timestamp in the message
    git commit -m "Auto-backup commit on $(date)"
    
    # Push the commit to the remote repository using SSH
    git push origin "$BRANCH"
else
    echo "No changes to commit at $(date)."
fi
