## Introduction

This repository is created for Java cross platform showcases. Java code was written and compiled under Windows,
while run at Ubuntu. Students will get to know what "Write Once, Run Anywhere" means and the things need to pay attention.

## How to Use

It is highly recommended to use [chocolatey](https://chocolatey.org/) to install
[virtualbox](https://www.virtualbox.org/), [vagrant](https://www.vagrantup.com/) and [git](https://git-scm.com/download/win).
```cmd
@echo off
:: install Chocolatey, please make sure you are running cmd as administrator
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
cinst git virtualbox virtualbox.extensionpack vagrant -y
```

You would need to restart after vagrant installed. After that run these commands to get the environment ready.
Ubuntu 14.04X64 with git, sqlite3, openjdk8, oracle jdk8 and tomcat7 installed.
```cmd
git clone https://github.com/ny83427/java-tutorial-vagrant
cd java-tutorial-vagrant
vagrant up
vagrant ssh
:: Do What You Want To Do!
```

You may verify installation via `java -version`, `curl http://localhost:8080`, or access http://192.168.33.10:8080
using any browser in Windows.
