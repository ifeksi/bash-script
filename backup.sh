#!/bin/bash

src=/d/Lab1/source
dest=/d/Lab1/backup

for file in $(find $src -printf "%P\n") ; do
     if [ -a $dest/$file ] ; then
           if [ $src/$file -nt $dest/$file ] ; then
           echo “Newer file detected, copying…”
           cp -r $src/$file $dest/$file
           else
           echo “File $file exists, skipping”
           fi
       else
       echo “$file is being copied over to $dest”
       cp -r $src/$file $dest/$file
       fi
done
