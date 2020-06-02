@call clean
@call bin\repo.new origin
@call bin\repo.clone user1 origin
@call bin\repo.clone user2 origin

@call bin\repo.changes user1 src\user1
@call bin\repo.changes user2 src\user2

@call bin\repo.cmd user1 "git push"
@call bin\repo.cmd user2 "git pull"
@call bin\repo.cmd user2 "git push"


