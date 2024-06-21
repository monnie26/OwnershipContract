// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Contractship {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function Owner() public view {
        require(msg.sender == owner, "Only the owner can call this function.");
    }

    function NotOwner() public view {
        if(msg.sender!= owner){
            revert("The caller is not the owner.");
        }
    }

    function Sender() public view {
        assert(msg.sender == owner);
    }
}
