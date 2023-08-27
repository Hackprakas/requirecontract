# Assert Require Revert Contract
This Solidity program serves as a simple "Assert Require Reevert" example, showcasing the basic syntax and functionality of the Solidity programming language. The purpose of this program is to provide an introduction to Solidity for newcomers, allowing them to understand the fundamentals of how the language works.
The `ErrorExamples` contract contains three functions that showcase the different error handling mechanisms.

## Description
### Function: `setValue(uint256 _newValue)`

This function sets the contract's `value` state variable to a new value, but only if the new value is greater than the current value. It uses the `require()` statement to validate the condition, reverting the transaction if the condition is not met.

### Function: `assertExample(uint256 _input)`

This function performs a simple calculation and uses the `assert()` statement to validate internal state. It demonstrates the use of `assert()` for verifying internal consistency. However, note that using `assert()` for input validation is not recommended.

### Function: `revertExample(uint256 _input)`

This function demonstrates the usage of the `revert()` statement. If the provided input is zero, the transaction will be reverted with a custom error message. Otherwise, the function performs a division operation.

### Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorExamples {
    uint256 public value;

    function setValue(uint256 _newValue) public {
        require(_newValue > value, "New value must be greater than current value");
        value = _newValue;
    }

    function assertExample(uint256 _input) public pure returns (uint256) {
        uint256 result = _input * 2;
        assert(result >= _input);
        return result;
    }

    function revertExample(uint256 _input) public pure returns (uint256) {
        if (_input == 0) {
            revert("Input must be non-zero");
        }
        return 10 / _input;
    }
}
```
## Getting Started

To run and interact with this program, follow these steps:

1. Open the Remix Solidity IDE by visiting the Remix website: [https://remix.ethereum.org/](https://remix.ethereum.org/)

2. Create a new file by clicking on the "+" icon in the left-hand sidebar and save it with a `.sol` extension (e.g., `HelloWorld.sol`).

3. Copy and paste the above code into the file.


## Authors
Prakash
@Hackprakas


