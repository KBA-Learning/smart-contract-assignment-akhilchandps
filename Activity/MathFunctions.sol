
// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract MathFunctions {
    uint8  num1;
    uint8  num2;
    uint8  num3;
  
    function setNumbers(uint8 _num1, uint8 _num2, uint8 _num3) public {
        num1 = _num1;
        num2 = _num2;
        num3 = _num3;
    }

    // Function to find the largest number
    function findLargest() public view returns (string memory) {
        if (num1 > num2 && num1 > num3) {
            return "num1 is greater";
        } else if (num2 > num3) {
            return "num2 is greater";
        } else {
            return "num3 is greater";
        }
    }

   function getDigit(uint8 digit) public pure returns (string memory) {
        
        if (digit == 0) return "zero";
        else if (digit == 1) return "one";
        else if (digit == 2) return "two";
        else if (digit == 3) return "three";
        else if (digit == 4) return "four";
        else if (digit == 5) return "five";
        else if (digit == 6) return "six";
        else if (digit == 7) return "seven";
        else if (digit == 8) return "eight";
        else if (digit == 9) return "nine";

        return ""; 
    }


       // Function to check the sign of a number
    function checkSign(uint8 value) public pure returns (string memory) {
        if (value > 0) {
            return "positive";
        } else if (value < 0) {
            return "negative";
        } else {
            return "zero";
        }
    }
}    





