git add .
git commit -m "Update (`date`)"
git push

echo -e "\033[0;32mDeploying new blog...\033[0m"

echo -e "\033[0;32mDeleting old site...\033[0m"
cd ~/www/jaxgil.github.io
find -not -path "./.git/*" -not -name ".git" | grep git
find -not -path "./.git/*" -not -name ".git" -delete


echo -e "\033[0;32mRunning hugo...\033[0m"
cd ~/www/jax-blog
snap run hugo -d ~/www/jaxgil.github.io

echo -e "\033[0;32mChanging to blog directory...\033[0m"

echo -e "\033[0;32mCommit and push the new build...\033[0m"
cd ~/www/jaxgil.github.io

git add .
git commit -am "New Blog Build (`date`)"
git push

#echo -e "\033[0;32mChange back to jaxgil.com...\033[0m"
cd ../jax-blog

echo -e "\033[0;32mDeploy complete.\033[0m"
