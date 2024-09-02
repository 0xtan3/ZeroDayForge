# Low Level Programming in C

This repository contains C programs demonstrating various concepts of low-level programming.

## Getting Started

These instructions will guide you on how to compile and run the C programs in this repository.

### Prerequisites

Ensure you have the following installed on your system:
- GCC (GNU Compiler Collection)
- Valgrind (for memory checking)

### Installing GCC

You can install GCC using the package manager of your operating system:

#### For Debian-based systems (Ubuntu, Mint, etc.):

```bash
sudo apt update
sudo apt install gcc
```

### Installing Valgrind

You can install Valgrind using the package manager of your operating system:

#### For Debian-based systems (Ubuntu, Mint, etc.):

```bash
sudo apt update
sudo apt install valgrind
```

### Running the Programs

A shell script `run.sh` is provided to compile and run the C programs using Valgrind.

#### Usage

```bash
./run.sh <source_file.c> <output_file>
```

- `<source_file.c>`: The C source file you want to compile.
- `<output_file>`: The name of the output executable file.

#### Example

To compile and run `main.c`:

```bash
./run.sh main.c main
```

The script performs the following steps:
1. Compiles the C source file using `gcc`.
2. Checks if `valgrind` is installed.
3. Runs the compiled executable with `valgrind`.
4. Outputs the results of the Valgrind memory check.