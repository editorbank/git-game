
cd user2
((echo line 1.)&(echo line 2. user2 was here)&(echo line 3.)) >file1
git add . && git commit -m "changes from user2"
git push -u origin master
cd ..