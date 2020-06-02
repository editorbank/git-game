
cd user1
((echo line 1. user1 was here)&(echo line 2.)&(echo line 3.)) >file1
((echo add user1)) >file2
git add . && git commit -m "changes from user1"
git push -u origin master
cd ..