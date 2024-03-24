# Logic-Gates

## Overview

This Prolog program simulates basic digital logic operations including AND, NOT, NAND, XOR gates, a basic adder, a full adder, and a binary adder. It is designed to demonstrate how individual logic gates can be combined to perform binary addition, a fundamental operation in digital circuits and computer architecture.

## Files

- `NANDGate.ecl`: Contains the Prolog code with predicates for simulating digital logic operations and binary addition.

## Features

- **Logic Gates Simulation**: Simulates basic digital logic gates (AND, NOT, NAND, XOR).
- **Basic Adder**: Implements a simple adder using XOR and AND gates.
- **Full Adder**: Expands on the basic adder to include carry-in and carry-out functionality.
- **Binary Adder**: Demonstrates a 3-bit binary addition using the full adder logic.

## Predicates

### Logic Gates

- `and/3`, `not/2`, `nand/3`, `xor_gate/3`: Simulate the respective logic gate operations.

### Adder Constructs

- `adder/4`: A basic adder that computes the sum and carry of two bits.
- `full_adder/5`: An adder that also considers a carry-in bit.
- `binary_adder/11`: Performs a 3-bit binary addition.

### `binary_addition/5`

- **Description**: A helper predicate for `binary_adder` that performs single-bit addition with carry-in and provides sum and carry-out.
- **Arguments**:
  - Input bits `X` and `Y`, carry-in bit `Cin`.
  - Outputs sum bit `S` and carry-out bit `Cout`.

## Usage

To use this program, you must have a Prolog interpreter installed. Once installed, you can load the program by navigating to the directory containing `digital_logic_simulator.pl` and running the following command in your terminal:

```bash
swipl -s digital_logic_simulator.pl
```

After loading the file, you can interact with the logic simulation predicates directly in the Prolog environment. Example queries include:

```prolog
?- xor_gate(1, 0, Result).
?- adder(1, 1, Sum, Carry).
?- full_adder(1, 1, 0, Sum, Carry).
?- binary_adder(1, 0, 1, 1, 1, 0, 0, S0, S1, S2, C3).
```

These queries simulate logic gate operations, basic and full addition, and a 3-bit binary addition, respectively.

## Contributing

We welcome contributions to improve the simulations or add new features. Please fork the repository and submit a pull request with your changes.

## License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
