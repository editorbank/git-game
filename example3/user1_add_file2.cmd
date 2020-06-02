
cd user1
((echo add user1)) >file2
git add . && git commit -m "changes from user1"
git push -u origin master
cd ..