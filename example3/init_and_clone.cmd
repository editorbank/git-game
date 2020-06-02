call clean
md origin
cd origin
git init
git config receive.denyCurrentBranch ignore

git config user.name another
((echo **/.idea/**)&(echo *.iml)) >.gitignore
git add .gitignore && git commit -m "init"

((echo line 1.)&(echo line 2.)&(echo line 3.)) >file1
git add . && git commit -m "create file1"

cd ..

git clone origin user1

git clone origin user2

cd user1
git config user.name user1
cd ..
cd user2
git config user.name user2
cd ..
