// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract ReentrancyAttack {
    mapping(address => uint) balance;

    function deposit() public payable {
        require(msg.value > 0, "Min requirement not met");
        balance[msg.sender] += msg.value;
    }

    function withdraw() public {}
}
