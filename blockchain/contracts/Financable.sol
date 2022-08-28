// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Financable is ReentrancyGuard {

    function payUser(uint amount) nonReentrant internal {
        payable(msg.sender).transfer(amount);
    }

    fallback() external payable {
        revert();
    }
    receive() external payable {
        revert();
    }
    
}