#!/bin/bash
version=v2.16.4
if [ $# -ge 1 ]; then
    version=$1
fi
echo will install codeql version:$version
wget https://github.com/github/codeql-action/releases/download/codeql-bundle-$version/codeql-bundle-linux64.tar.gz
tar xvf codeql-bundle.tar.gz
mv codeql codeql-$version
sudo ln -sf `pwd`/codeql-$version/codeql /usr/bin/codeql 
codeql resolve qlpacks
codeql resolve languages
git clone https://github.com/github/codeql codeql-library -b codeql-cli/$version