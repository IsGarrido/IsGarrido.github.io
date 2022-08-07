cd rel-blog
npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:IsGarrido/IsGarrido.github.io.git gh-pages
cd -