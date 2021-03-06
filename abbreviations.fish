#!/usr/bin/fish

# # # # # # # # # # # # # # # #
#    Abbreviations Config     #
# # # # # # # # # # # # # # # #

# xdg-open as an alternative to the open command on mac
abbr open 'xdg-open'

# Buildout
abbr pin 'bin/instance'
abbr pbo 'bin/buildout'
abbr psp 'pyenv local plone-env;and printf "[buildout]\nextends =\n    development.cfg\n\n[omelette]\nrecipe =\n\n" > development_nick.cfg;and ln -fs development_nick.cfg buildout.cfg;and python bootstrap.py;and bin/buildout'
abbr prs 'python bootstrap.py;and bin/buildout'
# Instance
abbr pinf 'bin/instance fg'
# Misc
abbr psi 'bin/solr-instance'
abbr pt 'bin/test'
abbr psf 'bin/solr-instance start; bin/tika-server start 2> /dev/null &; bin/instance fg'
abbr psm 'bin/solr-instance start; bin/tika-server start 2> /dev/null &'

# Oh my fish
abbr omr 'omf reload'

# Basic Builtin
abbr la 'ls -lAhX --color'
abbr lt 'ls -lAht --color'
abbr ls 'ls -GhX --color'
abbr ll 'ls -lX --color'
abbr rmf 'rm -rf'
abbr rtws 'sed -i \'s/[[:space:]]*\$//\''  # Remove trailing white space

# Aptitude
abbr aup 'sudo apt update;and sudo apt list --upgradable -a;and sudo apt dist-upgrade;and sudo apt autoclean;and sudo apt autoremove'
abbr apdate 'sudo apt update'
abbr apgrade 'sudo apt upgrade'
abbr anstall 'sudo apt install'
abbr add-key 'sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys '

# GIT
# rebase
abbr grc 'git rebase --continue'
abbr gri 'git rebase -S -i'
abbr gra 'git rebase --abort'
# commit
abbr gaa 'git add .'
abbr gcaa 'git commit -S --all --amend --no-edit'
abbr gca 'git commit -S --amend --no-edit'
abbr gc 'git commit -S -m'
# push
abbr gpf 'git push --force'
abbr gp 'git push'
# pull
abbr gfa 'git fetch --all'
abbr gpl 'git pull -r'
abbr gplf 'git reset --hard'
# stashing
abbr gsa 'git stash save'
abbr gsp 'git stash pop'
abbr gsd 'git stash drop'
# diff
abbr gdf 'git --no-pager diff'
abbr gds 'git --no-pager diff --staged'
# log
abbr glog 'git log --graph'
abbr gl1 "git log --graph --abbrev-commit --decorate --format='%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
abbr gl2 "git log --graph --abbrev-commit --decorate --format='%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
# misc
abbr gcp 'git cherry-pick -S '
abbr gco 'git checkout'
abbr gst 'git status'
abbr gre 'git remote -v'

# Misc
abbr fsize 'du -sh' # Show dictionary size
abbr md 'mkdir'
