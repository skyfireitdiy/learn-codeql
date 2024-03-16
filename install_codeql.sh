#!/bin/bash
wget https://github.com/github/codeql-action/releases/download/codeql-bundle-v2.16.4/codeql-bundle.tar.gz
tar xf codeql-bundle.tar.gz
sudo ln -sf `pwd`/codeql/codeql /usr/bin/codeql 
codeql resolve qlpacks
codeql resolve languages
