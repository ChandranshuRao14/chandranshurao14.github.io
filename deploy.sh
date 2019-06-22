#!/usr/bin/env sh

# abort on errors
set -e

# build
echo Building your Vue app...
npm run build

echo "Build successful. Deploying to master"

cd dist
echo 'chandranshurao.com' > CNAME
git init
git add -A
git commit -m "auto deployment"

# deploy
git push -f git@github.com:chandranshurao14/chandranshurao14.github.io.git master

cd ../

echo "Switching back to source branch"
git checkout source

echo "Done"