# The Columbia Esterel Compiler

The Columbia Esterel Compiler; now hopefully fixed to work on 64-bit.

## Installation instructions

* Install noweb (most of the source is written in literate c++)
(i.e sudo apt-get install noweb)
* Install libexpat (the dev version if required)
(i.e sudo apt-get install libexpat1-dev)

Alternatively, all build dependencies can be made available using
Nix by running the following command:
```
nix-shell
```

and then the normal
```
$ ./configure
$ make
$ make check
$ make install
```

for more information, see the file called README
