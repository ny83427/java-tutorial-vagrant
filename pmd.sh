#!/bin/bash
sudo apt-get install unzip -y
# install pmd the static analyze tool
cd $HOME
wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.10.0/pmd-bin-6.10.0.zip
unzip -o pmd-bin-6.10.0.zip
alias pmd="$HOME/pmd-bin-6.10.0/bin/run.sh pmd"
# pmd -d /usr/src -R rulesets/java/quickstart.xml -f text
alias cpd="$HOME//pmd-bin-6.10.0/bin/run.sh cpd"
# cpd --minimum-tokens 100 --files ${java.source.directory}
rm $HOME/pmd-bin-6.10.0.zip
echo ==================================================================
echo    Congratulations! pmd/cpd 6.10.0 was installed successfully!
echo    Usage: pmd -d /usr/src -R rulesets/java/quickstart.xml -f text
echo    Usage: cpd --minimum-tokens 100 --files /usr/src
echo ==================================================================
