# Assert Require Revert Contract
This Solidity program serves as a simple "Assert Require Reevert" example, showcasing the basic syntax and functionality of the Solidity programming language. The purpose of this program is to provide an introduction to Solidity for newcomers, allowing them to understand the fundamentals of how the language works.
The `ErrorExamples` contract contains three functions that showcase the different error handling mechanisms.

## Description
### Function: `setValue(uint256 Value)`

This function sets the contract's `age` state variable to a new value.First it checks age is zero,if it is true,then the transaction is reverted back using the `revert()` function.
Next the function checks whether age is greater than or equal to 18 using the `require()` function,if it true,then the age value is set,else it is reverted back.

### Function: `doubleage()`

This function performs a simple calculation and uses the `assert()` statement to validate whether `age*2` results in greater than or equal to 36.If it is true,then the value is returned,else the transaction is reverted back.


### Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorExamples {
    uint256 public age;

    function setValue(uint256 Value) public {
        if(Value==0){
            revert("Age should not be zero");
        }
        require(Value >= 18, "your age should be greater than 18");
        
        age = Value;
    }
    function doubleage() public view returns (uint256) {
        uint256 result=age*2;
        assert(result >= 36);
        return result;
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


