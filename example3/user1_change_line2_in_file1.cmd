
cd user1
((echo line 1.)&(echo line 2. user1 was here)&(echo line 3.)) >file1
git add . && git commit -m "changes from user1"
git push -u origin master
cd ..