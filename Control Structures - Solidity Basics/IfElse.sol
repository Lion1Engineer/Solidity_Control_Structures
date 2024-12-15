//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse {
    // This structure allows the correct expression to be found.
    // if - else blocks run until the correct expression is found.
    bytes32 private hashedPassord;
    // Since we cannot directly compare string expressions in solidity language, we use bytes32.
    // Then we hash it with the string.
    uint256 private loginCount;
    // Variable that holds the number of entries

    constructor(string memory _password) {
        hashedPassord = keccak256(abi.encode(_password));
        // We need to use keccak256 to match each other.
    }

    function login(string memory _password) public returns (bool) {
        if (hashedPassord == keccak256(abi.encode(_password))) {
            loginCount++;
            //loginCount += 1;
            return true;
        } else {
            return false;
        }
        // return (hashedPassord == keccak256(abi.encode(_password)));
        // İs the shortened version of the above expression
    }

    function loginlogin(string memory _password) public view returns (uint256) {
        if (hashedPassord == keccak256(abi.encode(_password))) {
            return 1;
        } else {
            return 0;
        }
        // return (hashedPassord == keccak256(abi.encode(_password)) ? 1 : 0);
        // İs the shortened version of the above expression.
    }

    function loginStatus() public view returns (uint256) {
        if (loginCount == 0) {
            return 0;
        } else if (loginCount > 0 && loginCount != 1) {
            return 1;
        } else if (loginCount == 1) {
            return 2; 
        } else {
            return 3;
        }
    }
}