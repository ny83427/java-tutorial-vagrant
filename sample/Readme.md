## A Simple Example

Compile and run the program `OnceAnywhere` under Windows:
```cmd
javac OnceAnywhere.java
java OnceAnywhere
java OnceAnywhere CMD
```

Then under Ubuntu 14.04, using `vagrant` to access:
```shell
vagrant ssh
cd /sample
java OnceAnywhere
java OnceAnywhere CMD
```

Compare the execution results of the same program under different OS.
And try to improve it so that it can run anywhere, but also run correctly anywhere.