#!/bin/bash

#Git Setup
git config --global user.name "John Doe"
git config --global user.email saswatlevin@gmail.com

#Finding out git configuration settings
git config --list
git config --list --show-origin

#Configure default Git editor
git config --global core.editor emacs

#Check specific key value
git config <key>.<attribute>

#Add a remote
git remote add origin <remote_url> <branch_name>

#Update changes
git push -u origin master

#Dealing with branches
git checkout -b <branch_name>
git branch -a
git branch
git checkout <branch_name>

#Resetting several commits
git reset --hard <commit_hash>
 
  
