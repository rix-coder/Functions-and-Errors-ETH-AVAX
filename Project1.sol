// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SmartContractProject {
    function RunRequire (uint a, uint b) public pure {
        require ( a + b < 20, "Ensure that the sum of the numbers entered is less than 20.");
    }

    function RunRevert (uint d, uint e) public pure {
        if ( d - e > 10) {
            revert ("Make sure the difference between the entered numbers is less than 10.");
        }
    }

    function RunAssert (uint c) public pure {
        assert ( c >= 5 );
    }
}
