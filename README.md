# ARM Book Notes

Notes for the ARM Book.

## Install Dependencies

### Linux

Download and install the [ARM Compiler for Linux][30], this will enable the
`armclang` command.

Then run:

```bash
# Ubuntu
apt install g++ gcc clang
```

## Compilation

```bash
# C++
g++ file.cpp

# C
gcc file.c
clang file.c

# ARM
armclang --target=aarch64-arm-none-eabi file.s
```

---

[30]: https://developer.arm.com/downloads/-/arm-compiler-for-linux
