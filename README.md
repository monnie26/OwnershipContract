# Contractship

## Overview
The `Contractship` is a simple smart contract built with Solidity that manages ownership of the contract. The contract is designed to restrict access to certain functions, ensuring that only the owner can execute them. This contract is a basic example of implementing ownership and access control in a smart contract.

## Features
- **Owner Initialization**: The contract initializes the owner as the address that deploys the contract.
- **Owner Verification**: Provides three different methods to verify if the caller is the owner:
  - `Owner()`: Uses `require` to check if the caller is the owner.
  - `NotOnwer()`: Uses `revert` to check if the caller is the owner.
  - `Owner()`: Uses `assert` to check if the caller is the owner.

## Functions

```solidity
constructor() {
    owner = msg.sender;
}
//Sets the owner to the address that deploys the contract.

function onlyOwner() public view {
    require(msg.sender == owner, "Only the owner can call this function.");
}
//Checks if the caller is the owner using require. If not, it throws an error with the message "Only the owner can call this function."

function onwerHere() public view {
    if(msg.sender != owner) {
        revert("The caller is not the owner.");
    }
}
//Checks if the caller is the owner using revert. If not, it reverts the transaction with the message "The caller is not the owner."

function Owner() public view {
    assert(msg.sender == owner);
}
//Checks if the caller is the owner using assert. If not, it causes the transaction to fail.
```

# Deployement

To deploy this contract, you need to have a Solidity development environment set up. You can use tools like Remix, Truffle, or Hardhat to deploy the contract.

**Using Remix**
- Open Remix IDE.
- Create a new file and paste the OwnershipContract code into it.
- Compile the contract.
- Deploy the contract using the "Deploy" button.

# License

This project is licensed under the MIT License. See the LICENSE file for details.




