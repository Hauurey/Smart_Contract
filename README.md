# Solidity Token
This Solidity program demonstrates a basic implementation of a contract that incorporates safe error handling and simple value storage. It provides a foundational example for beginners learning Solidity, particularly focused on using require, assert, and revert statements to manage errors effectively.

## Description
The contract, written in Solidity for use on the Ethereum blockchain, introduces basic functionality for storing, updating, and validating a numeric value, as well as performing a safe division operation. It enforces conditions to ensure input validity and precise division calculations. This example serves as a stepping stone for developing more complex contracts with robust error-handling mechanisms in the future.

## Getting Started
### Executing the Program
To run this program, you can use Remix, an online Solidity IDE. Follow these steps to get started:

Go to the Remix website: https://remix.ethereum.org/.
Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., smart_contract.sol).
Copy and paste the following code into the file:
```javascript
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
```

To compile the code, go to the "Solidity Compiler" tab in the left sidebar of your IDE. Make sure the compiler version is set to 0.8.28 (or another compatible version), then click the "Compile smart_contract.sol" button.
Once compiled, deploy the contract by navigating to the "Deploy & Run Transactions" tab. Select the SafeMathContract from the dropdown menu, then click the "Deploy" button.
After deployment, you can interact with the contract by calling its functions. Use updateValue to set a new value, and divide to perform division with specified inputs. Enter the required parameters, then click the function button to execute.

## Authors
Metacrafter Carlo Jan Harry S. Añonuevo

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
