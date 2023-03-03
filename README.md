# ARM Book Notes

Notes for the ARM Book.

## Install Dependencies

### Linux

Download and install the [ARM Compiler for Linux][30].

Then run:

```bash
# Ubuntu
apt install g++ gcc clang
```

## Compilation

### C++

```bash
# With the G++ compiler
g++ -o exec.out file.cpp
```

### C

```bash
# With the GCC compiler collection
gcc -o exec.out file.c

# With the Clang compiler
clang -o exec.out file.c
```

### ARM

```bash
# From an ARM machine
as -o object.o file.s     # Generate object.o from file.s
gcc -o exec.out object.o  # Generate exec.out from object.o

# From a non-ARM machine
aarch64-linux-gnu-as -o object.o file.s     # Generate object.o from file.s
aarch64-linux-gnu-gcc -o exec.out object.o  # Generate object.o from file.s
```

---

[30]: https://developer.arm.com/downloads/-/arm-compiler-for-linux
