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
