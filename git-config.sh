# push current branch to branch of same name
git config --global push.default current

git config --global user.name z1cheng

git config --global user.email imchench@gmail.com

git config --global core.editor "vim"

# proxy
proxy="something"
git config --global http.proxy ${proxy}
git config --global https.proxy ${proxy}