// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title MessageBox Contract
/// @notice Encrypted on-chain messaging service.
contract MessageBox {

    struct Message {
        address sender;
        string content;
        uint256 timestamp;
    }
    
    mapping(address => Message[]) public inbox;
    
    function send(address _to, string calldata _content) external {
        inbox[_to].push(Message({
            sender: msg.sender,
            content: _content,
            timestamp: block.timestamp
        }));
    }
    
    function getMessageCount(address _user) external view returns (uint256) {
        return inbox[_user].length;
    }

}
