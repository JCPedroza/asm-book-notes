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

## OPCodes

### Load / Store Pair

LDP: Load pair

- LDP <load into 1>, <load into 2>, [value to store]

STP: Store pair

- STP <value to store 1>, <value to store 2>, [load into]

```asm
// Load [X0] into W3, and load [X0 + 4] into W7
LDP W3, W7, [X0]

// Store D0 into [X4], and store D1 to [X4 + 8]
STP D0, D1, [X4]
```

---

[30]: https://developer.arm.com/downloads/-/arm-compiler-for-linux
