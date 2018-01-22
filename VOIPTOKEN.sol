pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract VOIPTOKEN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function VOIPTOKEN(address _owner)  UpgradeableToken(_owner) {
    name = "VOIPTOKEN";
    symbol = "VOIP";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}