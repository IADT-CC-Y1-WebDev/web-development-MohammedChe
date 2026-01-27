#!/bin/bash
# Update examples from instructor's repository
# Run this when your instructor announces new content

# ============================================================
# INSTRUCTOR: Replace this URL with your template repository
<<<<<<< HEAD
UPSTREAM_URL="https://github.com/INSTRUCTOR/REPO-NAME.git"
=======
UPSTREAM_URL="https://github.com/john-dempsey/web-development-template.git"
>>>>>>> upstream/main
# ============================================================

# Check if upstream remote exists, add it if not
if ! git remote | grep -q "^upstream$"; then
    echo "Adding instructor's repository as upstream remote..."
    git remote add upstream "$UPSTREAM_URL"
fi

echo "Fetching updates from instructor..."
git fetch upstream

echo ""
echo "Merging updates..."
<<<<<<< HEAD
git merge upstream/main -m "Update examples from instructor"
=======
git merge upstream/main --allow-unrelated-histories -m "Update examples from instructor"
>>>>>>> upstream/main

if [ $? -eq 0 ]; then
    echo ""
    echo "Done! Your repository is now up to date."
else
    echo ""
    echo "There were merge conflicts. Ask your instructor for help."
fi
