###############################################################################################
### Koken cms for photographers has been abbandoned by its developers. The original project ### 
### sadly died and I havn't found any suitible replacement. So trying to keep koken alive   ###
### for my personal portfolios                                                              ###
###############################################################################################

###Short installation guide:

###Clone the repo:
git clone https://github.com/SloppySyntax/koken.git

### Update database.php to your db credentials and ignore its path for changes
git update-index --skip-worktree ./storage/configuration/database.php

### Exclude cachefiles from pushing to github
git config --global core.excludesFile ~/.gitignore


Create a database and import koken.sql

browse to /admin and login using your@email.address / password

Change your setting and credentials.

Koken is not supported on php 8 so dont expect this project to last after php 8 update
I hope it will somehow become possible to keep this cms going but only have limited 
knowledge of php.

-- SloppySyntax
