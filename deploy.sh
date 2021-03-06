#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo --theme=dimension --baseUrl="https://litingfeng.github.io/"

# Go To Public folder
cd public
cp -r . ../../litingfeng.github.io/
cd ../../litingfeng.github.io/

# Add changes to git.
git init
git add -A

# Commit changes.
# msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push https://github.com/litingfeng/litingfeng.github.io.git master

# Come Back up to the Project Root
cd ../Blogsource