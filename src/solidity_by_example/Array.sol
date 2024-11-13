// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Array
{
    uint[] public num = [1, 2];
    uint[4] public fixed_num = [1,2,3,4];

    function getArrays() public view returns(uint256[] memory array1, uint256[4] memory fixedd)
    {
       array1 = num;
       fixedd = fixed_num;
       //In above line got error like Type uint256[4] storage ref is not implicitly convertible to expected type uint256[4] calldata.solidity(7407)
    }
}