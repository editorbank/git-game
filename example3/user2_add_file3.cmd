
cd user2
((echo add user2)) >file3
git add . && git commit -m "changes from user2"
git push -u origin master
cd ..