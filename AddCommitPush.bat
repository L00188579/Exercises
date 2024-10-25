#!/bin/bash
# by: Alan Coughlan
# Date: 25/10/24
# Function: Perform a remote commit
# Script: AddCommitPush.dat

@echo off
cls
git status

echo '**************************************************'
echo "Performing an add for all files in this directory"
git add .
git status

echo '**************************************************'
echo Enter the commit message:
read -p CommitMessage
git commit -m "$CommitMessage"
git status

echo '**************************************************'
echo 'Pushing to GITHUB repository'
git push -u origin main
echo '**************************************************'

echo 'Done!'
