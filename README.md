# Functions-and-Errors-ETH-AVAX
Overview
A smart contract that implements the require(), assert() and revert() statements, made for Eth + Avax Intermediate Assesment 1 on the Metacrafters learning platform.

# Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has the following functions :-

(1) Contract successfully uses require() statement.

(2) Contract successfully uses assert() statement.

(3) Contract successfully uses revert() statement.

## Getting Started
### Functionalities
- require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.
- assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.
- revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes made to the state, and things return to the initial state or the state before the function call was made.
## Executing program
- To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
- Open a Solidity file in the repository and copy the code and paste it to the IDE you use.
-Add sol suffixes in your file name if you try to run it to the IDE so it read as a SOLIDITY FILE

           // SPDX-License-Identifier: MIT
            pragma solidity ^0.8.25;

            contract ErrorHanddling {
                function RunRequire(uint _LeapYear) public pure {
                    require((_LeapYear % 4 == 0) && ((_LeapYear % 100 != 0) || (_LeapYear % 400 == 0)), "Input Year should be a leap year");
                }
            
                function RunRevert(uint _EvenNum) public pure {
                    if (_EvenNum % 2 != 0 ) {
                        revert("Number is not an Even number.");
                    }
                }
            
                uint public num;
            
                function RunAssert() public view {
                    assert(num == 0);
                }
            }


## Reminder
Be aware and alert for some errors:

- You will notice if your code have an error check on the upper right side of your screen you will your mini-minimize entire code there that have a red lines, blue lines mean you are in that lines and red lines means error.
- You will see a Red Exclamation Mark in that line so you will notice that there some errors
- Check your File name if its red
- Don't forget to count and check some valuable symbols { } , [ ] , ( ) , ;

## Author
NTCIAN Rix
Email: 422003664@ntc.edu.ph
<br>
[Discord: @Rix](rix1473)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.


