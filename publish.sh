git branch -D gh-pages \
&& git checkout --orphan gh-pages \
&& yarn build \
&& git add _static \
&& git commit -m \"build\" \
&& git push origin `git subtree split --prefix _static gh-pages`:gh-pages --force \
&& rm -rf _static \
&& git checkout master
