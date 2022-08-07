rmdir /S /Q dist
git submodule update --init --recursive
git submodule update --remote
cd rel-blog
call npm install
call npm run build
move dist "../"
cd "../dist"
git init
git add -A
git commit -m 'deploy'
git remote add -t gh-pages origin https://github.com/IsGarrido/IsGarrido.github.io.git
git checkout -b gh-pages
git push --set-upstream origin gh-pages
cd ..