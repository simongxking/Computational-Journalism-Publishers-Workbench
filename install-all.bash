#! /bin/bash

for i in R-compiled RStudio eBook-editing
do
  pushd $i
  ./install-all.bash
  popd
done
