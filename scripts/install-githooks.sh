#!/bin/bash

# Directory containing the git hooks
HOOKS_DIR="scripts/githooks"

# Git hooks directory
GIT_HOOKS_DIR=".git/hooks"

# Check if the githooks directory exists
if [ ! -d "$HOOKS_DIR" ]; then
    echo "Error: $HOOKS_DIR directory not found."
    exit 1
fi

# Check if the .git/hooks directory exists
if [ ! -d "$GIT_HOOKS_DIR" ]; then
    echo "Error: $GIT_HOOKS_DIR directory not found. Are you in the root of a git repository?"
    exit 1
fi

# Create symbolic links and make them executable
for hook in "$HOOKS_DIR"/*; do
    if [ -f "$hook" ]; then
        hook_name=$(basename "$hook")
        ln -sf "../../$HOOKS_DIR/$hook_name" "$GIT_HOOKS_DIR/$hook_name"
        chmod +x "$GIT_HOOKS_DIR/$hook_name"
        echo "Created symbolic link for $hook_name"
    fi
done

echo "Git hooks installation complete."
