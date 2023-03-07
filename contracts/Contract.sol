// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Contract {
    // https://goerli.etherscan.io/address/0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502
    address public winner = 0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502;

    function trigger() external {
        (bool s, ) = winner.call(
            abi.encodeWithSignature("attempt()")
        );
        require(s);
    }
}
