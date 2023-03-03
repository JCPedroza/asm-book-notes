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
g++ file.cpp -o exec.out

# With the GCC compiler collection
gcc file.cpp -lstdc++ -o exec.out
```

### C

```bash
# With the GCC compiler collection
gcc file.c -o exec.out

# With the Clang compiler
clang file.c -o exec.out
```

### ARM

```bash
# From an ARM machine
as file.s -o object.o     # Generate object.o from file.s
gcc object.o -o exec.out  # Generate exec.out from object.o

# From a non-ARM machine
aarch64-linux-gnu-as file.s -o object.o     # Generate object.o from file.s
aarch64-linux-gnu-gcc object.o -o exec.out  # Generate object.o from file.s
```

---

[30]: https://developer.arm.com/downloads/-/arm-compiler-for-linux
