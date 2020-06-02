
cd user2
((echo line 1.)&(echo line 2.)&(echo line 3. user2 was here)) >file1
((echo add user2)) >file3
git add . && git commit -m "changes from user2"
git push -u origin master
cd ..