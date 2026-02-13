// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "forge-std/Test.sol";
import "../src/MessageBox.sol";

contract MessageBoxTest is Test {
    MessageBox public c;
    
    function setUp() public {
        c = new MessageBox();
    }

    function testDeployment() public {
        assertTrue(address(c) != address(0));
    }
}
