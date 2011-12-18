#!/bin/bash
cd ~/cvs/serendipity/git/additional_plugins/
git pull
git rebase

cd ~/cvs/serendipity/git/additional_themes/
git pull
git rebase

rsync \
      --exclude=/*.zip --exclude=/*.tgz --exclude=.project --exclude=.cvsignore --exclude=SerendipityTranslator.zip --exclude=CVS --exclude=.git --exclude=homepage/by*.htm --exclude=homepage/template*.htm --exclude=homepage/box*.htm --exclude=homepage/last.txt \
      --archive --no-t --no-p --checksum -i --delete-after -v -z ~/cvs/serendipity/git/additional_plugins/ ~/cvs/serendipity/additional_plugins   

rsync \
      --exclude=/*.zip --exclude=/*.tgz --exclude=.project --exclude=.cvsignore --exclude=CVS --exclude=.git \
      --archive --no-t --no-p --checksum -i --delete-after -v -z ~/cvs/serendipity/git/additional_themes/ ~/cvs/serendipity/additional_themes   
            