// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ErrorHandling {
    uint public totVal;
    function setValue(uint _InputNum) external  {
        require(_InputNum >= 5, "Num must be greater than and equal to 5");
    
        if (_InputNum > 50){
            revert("Num must not exceed 50");
        }
        
        uint newInputNum = totVal + _InputNum;
        assert(newInputNum >= totVal);

        totVal = newInputNum;
    }

    
    function deductValue(uint _deduct) external  {
        require(_deduct <= totVal, "Deduct cannot be greater than the total value.");

        uint newInputNum = totVal - _deduct;
        totVal = newInputNum;
    }

    function Assert() external pure returns (bool) {
        assert(1 == 1);
        return true;
    }
}
