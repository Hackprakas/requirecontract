// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorExamples {
    uint256 public value=1;

    function setValue(uint256 _newValue) public {
        // Use require to check conditions and revert if they are not met
        require(_newValue > value, "New value must be greater than current value");
        
        value = _newValue;
    }

    function assertExample(uint256 _input) public pure returns (uint256) {
        // Use assert to validate internal state, should not be used for input validation
        uint256 result = _input * 2;
        assert(result >= _input);
        return result;
    }

    function revertExample(uint256 _input) public pure returns (uint256) {
        if (_input == 0) {
            // Use revert to explicitly revert the transaction with a custom error message
            revert("Input must be non-zero");
        }
        return 10 / _input;
    }
}
