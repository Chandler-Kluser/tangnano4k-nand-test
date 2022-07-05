# Sipeed Tang Nano 4k NAND test

This repository is to test a Sipeed Tang Nano 4k NAND logic using its two builtin keys (A and B) to make a NAND output.

## Prerequisites

To generate the bitstream, you will need:

- [yosys](https://github.com/YosysHQ/yosys)

- [nextpnr-gowin](https://github.com/YosysHQ/nextpnr)

- [apicula](https://github.com/YosysHQ/apicula)

To flash the FPGA you will need:

- [openFPGALoader](https://github.com/trabucayre/openFPGALoader)

## Building

It is recommended to have `make` in your system, although it is not mandatory, if so just run:

```bash
make
```

## Flashing

It is recommended to have `make` in your system, although it is not mandatory, if so just run:

```bash
make flash
```


