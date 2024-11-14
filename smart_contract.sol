// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SafeMathContract {
    uint public storedValue;

    function updateValue(uint newValue) public {
        require(newValue > 0, "Value must be positive.");
        assert(newValue != storedValue);
        storedValue = newValue;
    }

    function divide(uint numerator, uint denominator) public pure returns (uint) {
        require(denominator != 0, "Division by zero is not allowed.");

        if (numerator % denominator != 0) {
            revert("Numerator must be a multiple of the denominator.");
        }

        return numerator / denominator;
    }
}
