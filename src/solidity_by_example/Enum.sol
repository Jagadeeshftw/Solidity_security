// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Enum
{
  enum Status{
     None,
     Pending,
     Shipping,
     Accepted,
     Cancelled
  }

  Status public status;

  function get() external view returns(Status)
  {
    return status;
  }

  function set(Status _status) external 
  {
    status = _status;
  }
   
  function cancel() external
  {
    status = Status.Cancelled;
  }
}