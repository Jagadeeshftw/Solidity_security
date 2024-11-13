// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Counter {
    int256 counter;
    error Overflow(int256 counter);
    error Underflow(int256 counter);
    function get() public view returns (int256) {
        return counter;
    }

    function set(int256 value) public {
        counter = value;
    }
    function increment() public {
        // require(counter != type(int256).max - 1, "Overflow");
        if (counter == type(int256).max - 1) revert Overflow(counter);
        counter++;
    }

    function decrement() public {
        //require(counter != type(int256).min, "Count is equal to zero");
        if (counter == type(int256).min) revert Underflow(counter);
        counter--;
    }
}
