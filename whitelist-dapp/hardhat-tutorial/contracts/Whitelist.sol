//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract Whiltlist{
  uint8 public maxWhitelistAddress;
  mapping (address => bool) public WhitelistAddress;
  uint8 public numAddressesWhitelisted;

  constructor(uint8 _maxWhitelistAddress ){
    maxWhitelistAddress = _maxWhitelistAddress;
  }
  function addAddressToWhitelist() public{
    require(!WhitelistAddress[msg.sender],"Sender Initialised");
    require(numAddressesWhitelisted < maxWhitelistAddress," Cannot Add More");
    WhitelistAddress[msg.sender] = true;
    numAddressesWhitelisted +=1 ;

  }
}
