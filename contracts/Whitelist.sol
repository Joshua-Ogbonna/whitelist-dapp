// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Whitelist {
    // Max number of whitlested addressed allowed
    uint256 public maxWhitelistedAddresses;

    // mapping of whitelisted addresses
    mapping (address => bool) public whitelistedAddresses;

    // Number of whitelisted address
    uint256 public numAddressesWhitelisted;

    // Constructor user will set max number of whitelisted addresses allowed
    constructor(uint256 _maxWhitelistedAddress) {
        maxWhitelistedAddresses = _maxWhitelistedAddress;
    }

    // Function to add whitelisted address
    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "You have been added to the whitelist already!");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "Limit crossed");

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}