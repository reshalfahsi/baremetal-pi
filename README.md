# Baremetal Pi - Operating Systems Development: Internal LED Blinking

This repository is for exercise of Embedded Operating System course (TKEE163251) in Electrical and Information Engineering of Universitas Gadjah Mada. The task is simple: blink the Raspberry Pi 3B internal LED based on student number. There are 5 digits in student number. The LED must blink with 200ms delay for each digit. There is a 2s delay between digits.

![alt text](result.gif)

## Requirements

You will need Raspberry Pi 3B for testing the actual code, but you don't need any Raspberry Pi 3B to compile, you can use the gcc arm eabi toolchain in another device such as Personal Computer.

You can install the ARM gcc with:

```bash
sudo apt install gcc-arm-none-eabi
```

## Compiling and running on Raspberry Pi 3

```bash
make clean
make all
```

Copy the generated `kernel7.img` to your SD card, along with the [Raspberry Pi boot files](https://github.com/raspberrypi/firmware/tree/master/boot) (bootloader.bin and start.elf).


