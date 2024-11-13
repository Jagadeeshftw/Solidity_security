// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;
contract Constant {
    
    address public constant myaddress = address(6);
}

contract WithoutConstant {
    address public myaddress = address(6);
}
