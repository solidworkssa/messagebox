// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MessageBox {
    mapping(address => uint256) public data;
    uint256 public counter;

    event DataStored(address indexed user, uint256 value);

    function store(uint256 value) external {
        data[msg.sender] = value;
        emit DataStored(msg.sender, value);
    }

    function retrieve(address user) external view returns (uint256) {
        return data[user];
    }

    function incrementCounter() external {
        counter++;
    }
}
