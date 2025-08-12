// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {

    uint256 public storedData;
    address public owner;

    constructor() {}

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public pure returns (uint256) {
        return storedData;
    }

    function withdraw(uint256 amount) public {
        require(amount <= storedData, "Insufficient funds");
        
        payable(msg.sender).transfer(amount);
        
        storedData -= amount;
    }

    function changeOwnership(address newOwner) public {
        require(msg.sender == owner, "Not the owner");
        owner = newOwner;
    }

    function doNothing() public {
        require;
    }
}
