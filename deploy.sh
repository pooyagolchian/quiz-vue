#!/usr/bin/env sh

# abort on errors
set -e

# build
echo Linting..
yarn run lint
echo Building. this may take a minute...
yarn run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'example.com' > CNAME

echo Deploying..
git init
git add -A
git commit -m 'deploy'
git checkout -b gh-pages

# deploy
git push -f git@github.com:pooyagolchian/quiz-vue.git gh-pages


cd -