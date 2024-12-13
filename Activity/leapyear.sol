// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract LeapYearChecker {

    function isLeapYear(uint year) public pure returns (string memory) {

        if (year < 1000 || year > 9999) {
            return "Invalid year: Year should be a 4-digit number";
        }
        
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
            return "Leap Year";
        } else {
            return "Not a Leap Year";
        }
    }
}
